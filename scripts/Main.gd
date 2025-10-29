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

@onready var player_state = preload("res://scripts/Systems/player.gd").new()
@onready var economy = preload("res://scripts/Systems/economy.gd").new()
@onready var inventory = preload("res://scripts/Systems/inventory.gd").new()

var player = {}
var day = 1

var market_instance : Node = null
var market_open := false

func _ready():
	_init_player()
	btn_reset.pressed.connect(_on_reset_pressed)
	add_child(economy)
	add_child(inventory)
	add_child(player_state)
	player_state.register_inventory(inventory)
	player_state.player_loaded.connect(_on_player_loaded)
	player_state.player_saved.connect(_on_player_saved)
	
	economy.transaction_complete.connect(_on_transaction_complete)
	_update_ui()
	btn_next.pressed.connect(_next_turn)
	btn_market.pressed.connect(_open_market)


func _init_player():
	player = {
		"money": 1000.0,
		"heat": 0.0,
		"reputation": 10.0,
		"morale": 100.0
	}

func _next_turn():
	_close_market_if_open()  # Ensures modal closes first
	day += 1
	player_state.advance_day()
	player_state.add_heat(randf_range(-2, 5))
	player_state.add_money(randi_range(-100, 200))
	_update_ui()

func _simulate_economy():
	var profit = randi_range(-100, 200)
	player.money += profit
	player.heat = clamp(player.heat + randf_range(-2, 5), 0, 100)
	player.reputation = clamp(player.reputation + randf_range(-1, 2), 0, 100)
	lbl_message.text = "Trade complete. Profit: $" + str(profit)

func _simulate_events():
	var roll = randf()
	if roll < 0.1:
		player.heat += 10
		lbl_message.text = "Rumors of a bust circulate. Heat increases."
	elif roll < 0.2:
		player.money -= 150
		lbl_message.text = "You paid off a customs officer."

func _update_ui():
	lbl_day.text = "Day: " + str(day)
	lbl_money.text = "Money: $" + str(round(player.money))
	lbl_heat.text = "Heat: " + str(round(player.heat))
	lbl_reputation.text = "Reputation: " + str(round(player.reputation))

func _log_event(msg):
	log.append_text(msg + "\n")

func _on_transaction_complete(profit, message):
	player.money += profit
	lbl_message.text = message
	_update_ui()

func _buy_parrot():
	var result = economy.buy("parrot", 2, player.money)
	if result.success:
		player.money -= result.money_spent
		inventory.add_item("parrot", 2, economy.get_price("parrot"))
		lbl_message.text = "Bought 2 parrots."
	else:
		lbl_message.text = result.error

func _sell_parrot():
	var result = inventory.remove_item("parrot", 1)
	if result.success:
		var sale = economy.sell("parrot", 1)
		player.money += sale.profit
		lbl_message.text = "Sold, but shipment was seized!" if sale.busted else "Sold 1 parrot."
	else:
		lbl_message.text = result.error

# === MARKET CONTROL ===
func _open_market():
	if market_open:
		return  # Prevent multiple markets

	market_instance = preload("res://scenes/Market.tscn").instantiate()
	add_child(market_instance)
	market_instance.init(economy, inventory, player_state.data)
	market_open = true

	# Connect close signal from Market.gd
	if market_instance.has_signal("market_closed"):
		market_instance.market_closed.connect(_on_market_closed)

func _on_market_closed():
	if market_instance:
		market_instance.queue_free()
		market_instance = null
	market_open = false

func _close_market_if_open():
	if market_open and market_instance:
		market_instance.queue_free()
		market_instance = null
		market_open = false

func _on_player_loaded():
	print("Player state loaded.")
	_update_ui()

func _on_player_saved():
	print("Player state saved.")

func _on_reset_pressed():
	_close_market_if_open()
	player_state.reset_game()
	get_tree().reload_current_scene()
	_update_ui()
	lbl_message.text = "Save file reset."
