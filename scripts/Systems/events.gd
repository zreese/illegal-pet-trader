extends Node

## Random Event System (foundation)
##
## This provides a lightweight, data-driven event manager aligned with the
## design document's Random Events system. It exposes:
## - Per-turn roll via advance_turn()
## - Emission of event_triggered with narrative + choices
## - Resolution via resolve_event(choice_index) applying core effects
## - Signals so UI/economy/inventory can react without tight coupling

signal event_triggered(event_payload)
signal event_resolved(event_id, choice_index, outcome)
signal notification(message)

enum EventType { LAW, MARKET, LOGISTICS, RELATIONSHIP, ETHICAL, DISEASE }

const BASE_EVENT_CHANCE := 1

var _rng := RandomNumberGenerator.new()
var _player : Node = null
var _current_event : Dictionary = {}

var _events : Array = []

func _ready() -> void:
	_rng.randomize()
	_events = _build_event_catalog()

func register_player(player_ref: Node) -> void:
	_player = player_ref

func advance_turn() -> void:
	# Roll for a random event each turn using BASE_EVENT_CHANCE; filter by conditions
	if _rng.randf() > BASE_EVENT_CHANCE:
		return
	var eligible: Array = []
	for ev in _events:
		var event_dict: Dictionary = ev as Dictionary
		if _event_condition_ok(event_dict):
			eligible.append(event_dict)
	if eligible.is_empty():
		return
	var selected: Dictionary = eligible[_rng.randi_range(0, eligible.size() - 1)] as Dictionary
	_current_event = selected.duplicate(true)
	event_triggered.emit(_expose_event_payload(_current_event))

func resolve_event(choice_index: int) -> void:
	if _current_event.is_empty():
		push_warning("[Events] resolve_event called with no active event.")
		return
	var choices : Array = _current_event.get("choices", [])
	if choice_index < 0 or choice_index >= choices.size():
		push_warning("[Events] Invalid choice index.")
		return
	var choice : Dictionary = choices[choice_index] as Dictionary
	var outcome : Dictionary = choice.get("outcome", {})
	_apply_outcome(outcome)
	event_resolved.emit(_current_event.get("id", ""), choice_index, outcome)
	_current_event.clear()

# =========================
# Internal helpers
# =========================

func _build_event_catalog() -> Array:
	# Minimal starter set derived from the design doc examples
	return [
		{
			"id": "customs_inspection",
			"type": EventType.LAW,
			"title": "Customs Inspection",
			"text": "An officer at customs signals you for additional screening.",
			"condition": "in_transit_or_recent",
			"choices": [
				{
					"label": "Attempt a bribe ($1,000)",
					"outcome": {"money": -1000.0, "heat": 2.0, "morale": 0.0, "note": "You bribe the officer. He pockets it and waves you through."}
				},
				{
					"label": "Try to bluff with paperwork",
					"outcome": {"heat": 6.0, "morale": -2.0, "note": "Paperwork barely holds. You are waved through, but eyes linger."}
				},
				{
					"label": "Abandon shipment and slip away",
					"outcome": {"heat": 1.0, "morale": -5.0, "inventory_loss_pct": 100, "note": "You ditch the cargo to avoid arrest."}
				}
			]
		},
		{
			"id": "police_raid",
			"type": EventType.LAW,
			"title": "Pre-dawn Police Raid",
			"text": "Authorities storm one of your safehouses.",
			"condition": "heat_high",
			"choices": [
				{
					"label": "Flee and sacrifice stock",
					"outcome": {"heat": 8.0, "morale": -4.0, "inventory_loss_pct": 75, "note": "You escape; most animals are seized."}
				},
				{
					"label": "Hide evidence (risky)",
					"outcome": {"heat": 4.0, "morale": -2.0, "inventory_loss_pct": 25, "note": "Hiding spots save part of your stock."}
				}
			]
		},
		{
			"id": "surge_in_demand",
			"type": EventType.MARKET,
			"title": "Surge in Demand",
			"text": "A celebrity post spikes demand for a popular species.",
			"condition": "anytime",
			"choices": [
				{
					"label": "Exploit the surge (short-term gain)",
					"outcome": {"money": 1500.0, "heat": 3.0, "morale": -1.0, "market_buff": {"species": "parrot", "sell_price_mult": 1.5, "duration": 3}, "note": "Prices jump; attention rises."}
				},
				{
					"label": "Stay cautious",
					"outcome": {"heat": -1.0, "note": "You pass on risky hype; things stay calm."}
				}
			]
		}
	]

func _event_condition_ok(ev: Dictionary) -> bool:
	var cond: String = str(ev.get("condition", "anytime"))
	if cond == "anytime":
		return true
	if _player == null:
		return false
	if cond == "heat_high":
		var heat: float = 0.0
		if _player and _player.data is Dictionary:
			heat = float(_player.data.get("heat", 0.0))
		return heat >= 60.0
	if cond == "in_transit_or_recent":
		# Placeholder: if we had a transport system flag, check it here.
		# As a starting point, allow occasionally based on day parity to simulate travel periods.
		var day_val: int = 1
		if _player and _player.data is Dictionary:
			day_val = int(_player.data.get("day", 1))
		return day_val % 3 == 0
	return true

func _expose_event_payload(ev: Dictionary) -> Dictionary:
	# Only expose what UI needs; keep internal fields if any in private copy
	var labels: Array = []
	var choices_array: Array = ev.get("choices", [])
	for c in choices_array:
		var choice_dict: Dictionary = c as Dictionary
		labels.append(str(choice_dict.get("label", "")))
	var result: Dictionary = {}
	result["id"] = str(ev.get("id", ""))
	result["type"] = ev.get("type", EventType.LAW)
	result["title"] = str(ev.get("title", "Event"))
	result["text"] = str(ev.get("text", ""))
	result["choices"] = labels
	return result

func _apply_outcome(outcome: Dictionary) -> void:
	if _player:
		if outcome.has("money"):
			if _player.has_method("add_money"):
				_player.add_money(float(outcome["money"]))
		if outcome.has("heat"):
			if _player.has_method("add_heat"):
				_player.add_heat(float(outcome["heat"]))
		if outcome.has("reputation"):
			if _player.has_method("add_reputation"):
				_player.add_reputation(float(outcome["reputation"]))
		if outcome.has("morale"):
			if _player.has_method("add_morale"):
				_player.add_morale(float(outcome["morale"]))
	# Effects other systems should handle (market buffs, inventory loss, arrests, etc.)
	if outcome.has("note"):
		notification.emit(str(outcome["note"]))
	# Emit resolution so market/inventory systems can react to these keys:
	# - inventory_loss_pct
	# - market_buff { species, sell_price_mult, duration }
	# - arrest_risk, etc.
	# Consumers should listen to event_resolved and read the outcome dict.
