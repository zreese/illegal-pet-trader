# /scripts/Systems/inventory.gd
extends Node
class_name Inventory

# === Player inventory ===
# Structure:
# { "parrot": {"qty": 2, "avg_cost": 250.0},
#   "python": {"qty": 1, "avg_cost": 600.0} }

var items := {}
var capacity_max := 25
var capacity_used := 0

signal inventory_changed
signal over_capacity_warning

# === Add animals after purchase ===
func add_item(species: String, qty: int, unit_cost: float) -> void:
	if not items.has(species):
		items[species] = {"qty": 0, "avg_cost": unit_cost}
	var entry = items[species]

	var total_cost = (entry["avg_cost"] * entry["qty"]) + (unit_cost * qty)
	entry["qty"] += qty
	entry["avg_cost"] = total_cost / entry["qty"]

	capacity_used += qty
	inventory_changed.emit()

	if capacity_used > capacity_max:
		over_capacity_warning.emit()

# === Remove animals after sale ===
func remove_item(species: String, qty: int) -> Dictionary:
	if not items.has(species):
		return {"success": false, "error": "You don’t own that species."}
	var entry = items[species]
	if entry["qty"] < qty:
		return {"success": false, "error": "Not enough stock."}

	entry["qty"] -= qty
	capacity_used -= qty

	if entry["qty"] == 0:
		items.erase(species)

	inventory_changed.emit()
	return {"success": true, "remaining": entry["qty"]}

# === Query available quantity ===
func get_quantity(species: String) -> int:
	return items.get(species, {}).get("qty", 0)

# === Calculate total inventory value (based on sell prices) ===
func calculate_value(economy: Node) -> float:
	var total := 0.0
	for species in items.keys():
		var sell_price = economy.get_price(species, false)
		total += sell_price * items[species]["qty"]
	return total

# === Debug/summary printout ===
func debug_list() -> void:
	for s in items.keys():
		var e = items[s]
		print("%s — Qty: %d @ Avg Cost: %.2f" % [s, e["qty"], e["avg_cost"]])
	print("Used: %d / %d" % [capacity_used, capacity_max])
