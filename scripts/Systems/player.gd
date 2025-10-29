extends Node
class_name Player

const SAVE_PATH := "user://savegame.json"

var inventory_ref : Node = null
var auto_save_enabled := true
var auto_save_delay := 0.5  # seconds to delay before writing, for batching
var _auto_save_timer : Timer

var data := {
	"money": 1000.0,
	"heat": 0.0,
	"reputation": 10.0,
	"morale": 100.0,
	"day": 1,
	"territories": 1,
	"capacity": 25, # NEW: Added capacity to save data
	"inventory": {},
	"upgrades": {},
	"events": []
}

signal player_loaded
signal player_saved

func _ready() -> void:
	_auto_save_timer = Timer.new()
	_auto_save_timer.wait_time = auto_save_delay
	_auto_save_timer.one_shot = true
	add_child(_auto_save_timer)
	_auto_save_timer.timeout.connect(_do_auto_save)

	if not FileAccess.file_exists(SAVE_PATH):
		save_game()
	else:
		load_game()

func register_inventory(inv_ref: Node) -> void:
	inventory_ref = inv_ref
	inventory_ref.inventory_changed.connect(_on_inventory_changed)
	if data.has("inventory") and data["inventory"].size() > 0:
		_load_inventory_from_data()

# === Player progression ===
func add_money(amount: float) -> void:
	data.money = max(0, data.money + amount)
	_auto_save()

func add_heat(amount: float) -> void:
	data.heat = clamp(data.heat + amount, 0, 100)
	_auto_save()

func add_reputation(amount: float) -> void:
	data.reputation = clamp(data.reputation + amount, 0, 100)
	_auto_save()

func add_morale(amount: float) -> void:
	data.morale = clamp(data.morale + amount, 0, 100)
	_auto_save()

func advance_day() -> void:
	data.day += 1
	_auto_save()

# NEW: Functions to get and upgrade inventory capacity
func get_inventory_capacity() -> int:
	return data.get("capacity", 25)

func upgrade_inventory_capacity(new_capacity: int):
	data.capacity = new_capacity
	_auto_save()
	# We'd also need to tell the inventory node to update its internal value
	if inventory_ref:
		inventory_ref.set_capacity_max(new_capacity)

# === Save and Load ===
func save_game() -> void:
	if inventory_ref:
		_sync_inventory_to_data()

	var file = FileAccess.open(SAVE_PATH, FileAccess.WRITE)
	if file:
		file.store_string(JSON.stringify(data, "\t"))
		file.close()
		player_saved.emit()
		print("[SAVE] Game saved.")
	else:
		push_error("[SAVE] Failed to write save file.")

func load_game() -> void:
	if not FileAccess.file_exists(SAVE_PATH):
		print("[LOAD] No save found; creating new.")
		save_game()
		return

	var file = FileAccess.open(SAVE_PATH, FileAccess.READ)
	if file:
		var parsed = JSON.parse_string(file.get_as_text())
		file.close()
		if typeof(parsed) == TYPE_DICTIONARY:
			data = parsed
			if inventory_ref:
				_load_inventory_from_data()
			player_loaded.emit()
			print("[LOAD] Game loaded.")
		else:
			push_error("[LOAD] Corrupted save file.")
	else:
		push_error("[LOAD] Failed to open save file.")

# === Auto-save handling ===
func _auto_save():
	if not auto_save_enabled:
		return
	if _auto_save_timer.is_stopped():
		_auto_save_timer.start()

func _do_auto_save():
	save_game()

# === Sync helpers ===
func _sync_inventory_to_data():
	var snapshot := {}
	for species in inventory_ref.items.keys():
		var entry = inventory_ref.items[species]
		snapshot[species] = {
			"qty": entry["qty"],
			"avg_cost": entry["avg_cost"]
		}
	data["inventory"] = snapshot

func _load_inventory_from_data():
	if inventory_ref == null:
		push_warning("[LOAD] Tried to load inventory before it was registered.")
		return
	inventory_ref.items.clear()
	inventory_ref.capacity_used = 0
	# NEW: Set the capacity from the loaded player data
	inventory_ref.set_capacity_max(get_inventory_capacity())
	for species in data["inventory"].keys():
		var entry = data["inventory"][species]
		# This will now correctly calculate capacity_used
		inventory_ref.add_item(species, entry["qty"], entry["avg_cost"])

# === Inventory signal handler ===
func _on_inventory_changed():
	_auto_save()

# === Utility ===
func reset_game() -> void:
	data = {
		"money": 1000.0,
		"heat": 0.0,
		"reputation": 10.0,
		"morale": 100.0,
		"day": 1,
		"territories": 1,
		"capacity": 25, # MODIFIED: Reset capacity too
		"inventory": {},
		"upgrades": {},
		"events": []
	}
	if inventory_ref:
		inventory_ref.items.clear()
		inventory_ref.capacity_used = 0
		inventory_ref.set_capacity_max(data.capacity) # MODIFIED
	save_game()
