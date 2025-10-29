extends Control

@onready var lbl_day = $Main/VBoxContainer/lbl_day
@onready var lbl_money = $Main/VBoxContainer/lbl_money
@onready var lbl_heat = $Main/VBoxContainer/lbl_heat
@onready var lbl_reputation = $Main/VBoxContainer/lbl_reputation
@onready var lbl_message = $Main/VBoxContainer/lbl_message
@onready var btn_next = $Main/VBoxContainer/Button
@onready var log = $Main/VBoxContainer/RichTextLabel
@onready var btn_market = $Main/VBoxContainer/MarketButton
@onready var btn_reset = $Main/VBoxContainer/ResetButton
# NEW: Add a label for capacity on the main screen
@onready var lbl_capacity = $Main/VBoxContainer/lbl_capacity 

@onready var player_state = preload("res://scripts/Systems/player.gd").new()
@onready var economy = preload("res://scripts/Systems/economy.gd").new()
@onready var inventory = preload("res://scripts/Systems/inventory.gd").new()

var player = {} # MODIFIED: This is now largely managed by player_state.data
var day = 1 # MODIFIED: This is now managed by player_state.data

var market_instance : Node = null
var market_open := false

func _ready():
	# _init_player() # MODIFIED: This is handled by player_state defaults
	btn_reset.pressed.connect(_on_reset_pressed)
	add_child(economy)
	add_child(inventory)
	add_child(player_state)
	
	# NEW: Link systems together. Order is important!
	# Inventory needs economy to calculate size/cost
	inventory.register_economy(economy) 
	# Player loads data and then populates inventory
	player_state.register_inventory(inventory) 

	# MODIFIED: Connect to player_state signals
	player_state.player_loaded.connect(_on_player_loaded)
	player_state.player_saved.connect(_on_player_saved)
	economy.transaction_complete.connect(_on_transaction_complete)
	
	# NEW: Connect to inventory signals
	inventory.inventory_changed.connect(_update_ui) # Refresh UI on change
	inventory.over_capacity_warning.connect(_on_over_capacity)

	_load_player_data() # NEW: Load data into local vars
	_update_ui()
	btn_next.pressed.connect(_next_turn)
	btn_market.pressed.connect(_open_market)

# MODIFIED: This is now just for local reference, player_state is the authority
func _load_player_data():
	player = player_state.data
	day = player_state.data.day
	
func _init_player():
	# This function is no longer needed, player_state handles defaults
	pass

func _next_turn():
	_close_market_if_open()  # Ensures modal closes first
	
	# MODIFIED: All progression logic is on player_state
	player_state.advance_day()
	day = player_state.data.day # Sync local var
	
	# NEW: Process daily upkeep and risks
	var upkeep_results = inventory.process_daily_upkeep_and_risk()
	var feed_cost = upkeep_results.feed_cost
	var deaths = upkeep_results.deaths
	
	var message = ""
	
	if feed_cost > 0:
		player_state.add_money(-feed_cost)
		message += "Paid $%.2f for feed. " % feed_cost
		
	if deaths > 0:
		player_state.add_morale(-5 * deaths) # Ethical Stressor
		message += "%d animals perished!" % deaths
		_log_event("%d animals perished due to poor conditions." % deaths)

	lbl_message.text = message
	
	# Old simulation logic, can be replaced by real events
	player_state.add_heat(randf_range(-2, 5))
	# player_state.add_money(randi_range(-100, 200)) # Replaced by feed cost
	
	_update_ui()

func _simulate_economy():
	# This function is deprecated by the new systems
	pass

func _simulate_events():
	# This function is deprecated by the new systems
	pass

func _update_ui():
	lbl_day.text = "Day: " + str(day)
	lbl_money.text = "Money: $" + str(round(player.money))
	lbl_heat.text = "Heat: " + str(round(player.heat))
	lbl_reputation.text = "Reputation: " + str(round(player.reputation))
	# NEW: Update capacity label
	if lbl_capacity and inventory:
		lbl_capacity.text = "Capacity: %d / %d" % [inventory.capacity_used, inventory.capacity_max]

func _log_event(msg):
	log.append_text(msg + "\n")

func _on_transaction_complete(profit, message):
	# MODIFIED: Use player_state to manage money
	player_state.add_money(profit)
	lbl_message.text = message
	_update_ui()
	
# NEW: Handle over capacity warning
func _on_over_capacity():
	_log_event("WARNING: Over capacity! Animals are at high risk.")
	lbl_message.text = "WARNING: Storage is full! Animals may die."

# === DEPRECATED FUNCTIONS ===
# These functions are hard-coded and should be removed
# The Market.gd screen now handles this dynamically
func _buy_parrot():
	pass

func _sell_parrot():
	pass

# === MARKET CONTROL ===
func _open_market():
	if market_open:
		return  # Prevent multiple markets

	market_instance = preload("res://scenes/Market.tscn").instantiate()
	
	# --- THIS IS THE FIX ---
	# Call init() *before* add_child().
	# This ensures the economy/inventory variables are set *before*
	# Godot calls _ready() on the market_instance.
	market_instance.init(economy, inventory, player_state.data)
	
	# Now add_child() can safely trigger _ready()
	add_child(market_instance)
	# -----------------------
	
	market_open = true

	# Connect close signal from Market.gd
	if market_instance.has_signal("market_closed"):
		market_instance.market_closed.connect(_on_market_closed)

func _on_market_closed():
	if market_instance:
		market_instance.queue_free()
		market_instance = null
	market_open = false
	_update_ui() # NEW: Refresh main UI when market closes

func _close_market_if_open():
	if market_open and market_instance:
		market_instance.queue_free()
		market_instance = null
		market_open = false

func _on_player_loaded():
	print("Player state loaded.")
	_load_player_data() # NEW: Sync local data
	# NEW: Set inventory capacity from loaded data
	if inventory and player_state:
		inventory.set_capacity_max(player_state.get_inventory_capacity())
	_update_ui()

func _on_player_saved():
	print("Player state saved.")

func _on_reset_pressed():
	_close_market_if_open()
	player_state.reset_game()
	get_tree().reload_current_scene()
