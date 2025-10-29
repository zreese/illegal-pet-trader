# /scripts/Systems/inventory.gd
extends Node
class_name Inventory

# === Player inventory ===
# Structure:
# { "parrot": {"qty": 2, "avg_cost": 250.0},
#   "python": {"qty": 1, "avg_cost": 600.0} }

var items := {}
var capacity_max := 0 # MODIFIED: Will be set by Player node
var capacity_used := 0

var economy_ref : Economy # NEW: Reference to economy node

signal inventory_changed
signal over_capacity_warning

# NEW: Function to link to economy node
func register_economy(econ_ref: Economy):
	economy_ref = econ_ref

# NEW: Function to set max capacity from player data
func set_capacity_max(max_val: int):
	capacity_max = max_val
	inventory_changed.emit() # Emit to update UI

# NEW: Helper to check remaining capacity
func get_remaining_capacity() -> int:
	return capacity_max - capacity_used

# === Add animals after purchase ===
# MODIFIED: No longer needs size passed in
func add_item(species: String, qty: int, unit_cost: float) -> void:
	if not items.has(species):
		items[species] = {"qty": 0, "avg_cost": unit_cost}
	var entry = items[species]

	var total_cost = (entry["avg_cost"] * entry["qty"]) + (unit_cost * qty)
	entry["qty"] += qty
	entry["avg_cost"] = total_cost / entry["qty"]

	# MODIFIED: Use size from economy_ref
	if not economy_ref:
		push_warning("Inventory: Economy ref not set, cannot calculate size!")
	else:
		var size_per_unit = economy_ref.get_size(species)
		capacity_used += qty * size_per_unit

	inventory_changed.emit()

	if capacity_used > capacity_max:
		over_capacity_warning.emit()

# === Remove animals after sale ===
# MODIFIED: No longer needs size passed in
func remove_item(species: String, qty: int) -> Dictionary:
	if not items.has(species):
		return {"success": false, "error": "You don’t own that species."}
	var entry = items[species]
	if entry["qty"] < qty:
		return {"success": false, "error": "Not enough stock."}

	entry["qty"] -= qty
	
	# MODIFIED: Use size from economy_ref
	if not economy_ref:
		push_warning("Inventory: Economy ref not set, cannot calculate size!")
	else:
		var size_per_unit = economy_ref.get_size(species)
		capacity_used -= qty * size_per_unit

	var remaining = entry["qty"] # NEW: Store remaining before erasing
	if entry["qty"] == 0:
		items.erase(species)

	inventory_changed.emit()
	return {"success": true, "remaining": remaining} # MODIFIED: Use stored var

# === Query available quantity ===
func get_quantity(species: String) -> int:
	return items.get(species, {}).get("qty", 0)
	
# NEW: Process daily feed costs and death risk
func process_daily_upkeep_and_risk() -> Dictionary:
	if not economy_ref:
		push_error("Inventory: Cannot process upkeep, economy ref is missing!")
		return {"feed_cost": 0.0, "deaths": 0}

	var total_feed_cost := 0.0
	var total_deaths := 0
	
	# Check for over capacity
	var is_over_capacity = capacity_used > capacity_max
	var base_death_chance = 0.01 # 1% base chance per animal per day
	if is_over_capacity:
		base_death_chance = 0.15 # 15% chance if over capacity!
		
	# Need to iterate over a copy of keys, as remove_item modifies the dictionary
	var species_list = items.keys() 
	
	for species in species_list:
		if not items.has(species):
			continue # Was removed by a previous death in the loop
			
		var entry = items[species]
		var qty = entry["qty"]
		
		# 1. Calculate Feed Cost
		var feed_cost_per_animal = economy_ref.get_feed_cost(species)
		total_feed_cost += qty * feed_cost_per_animal
		
		# 2. Calculate Deaths
		var deaths_this_species = 0
		for i in range(qty):
			if randf() < base_death_chance:
				deaths_this_species += 1
		
		if deaths_this_species > 0:
			remove_item(species, deaths_this_species)
			total_deaths += deaths_this_species
			
	return {"feed_cost": total_feed_cost, "deaths": total_deaths}


# === Calculate total inventory value (based on sell prices) ===
func calculate_value(economy_node: Node) -> float: # MODIFIED: param name
	var total := 0.0
	for species in items.keys():
		var sell_price = economy_node.get_price(species, false)
		total += sell_price * items[species]["qty"]
	return total

# === Debug/summary printout ===
func debug_list() -> void:
	for s in items.keys():
		var e = items[s]
		print("%s — Qty: %d @ Avg Cost: %.2f" % [s, e["qty"], e["avg_cost"]])
	print("Used: %d / %d" % [capacity_used, capacity_max])
