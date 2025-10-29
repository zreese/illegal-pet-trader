# /scripts/Market.gd
extends Control

@onready var grid = $VBoxContainer/MarketRows
@onready var back_button = $VBoxContainer/Button
@onready var lbl_capacity = $VBoxContainer/lbl_capacity

var economy : Node
var inventory : Node
var player : Dictionary
signal market_closed

# init now *only* stores the data. It's called before _ready().
func init(econ_ref: Node, inv_ref: Node, player_ref: Dictionary):
	economy = econ_ref
	inventory = inv_ref
	player = player_ref

# _ready() runs *after* @onready vars (like lbl_capacity) are set.
func _ready():
	back_button.pressed.connect(_on_back_pressed)
	
	# Check if dependencies were injected before populating
	if not economy or not inventory:
		push_error("Market scene was not initialized before _ready().")
		return
		
	# Systems are guaranteed to be ready here
	inventory.inventory_changed.connect(_refresh_capacity_label)
	populate_market()
	
func populate_market():
	# Clear existing children
	for child in grid.get_children():
		child.queue_free()

	# Update capacity label on load
	_refresh_capacity_label()

	for species in economy.market.keys():
		var m = economy.market[species]

		var lbl_species = Label.new()
		lbl_species.text = species.capitalize()
		lbl_species.size_flags_horizontal = Control.SIZE_EXPAND_FILL
		lbl_species.horizontal_alignment = HORIZONTAL_ALIGNMENT_LEFT
		
		var lbl_size = Label.new()
		lbl_size.text = str(m["size"])
		lbl_size.size_flags_horizontal = Control.SIZE_EXPAND_FILL
		lbl_size.horizontal_alignment = HORIZONTAL_ALIGNMENT_CENTER

		var lbl_buy = Label.new()
		lbl_buy.text = "$" + str(round(m["buy_price"]))
		lbl_buy.size_flags_horizontal = Control.SIZE_EXPAND_FILL
		lbl_buy.horizontal_alignment = HORIZONTAL_ALIGNMENT_CENTER

		var lbl_sell = Label.new()
		lbl_sell.text = "$" + str(round(m["sell_price"]))
		lbl_sell.size_flags_horizontal = Control.SIZE_EXPAND_FILL
		lbl_sell.horizontal_alignment = HORIZONTAL_ALIGNMENT_CENTER

		var lbl_owned = Label.new()
		lbl_owned.text = str(inventory.get_quantity(species))
		lbl_owned.size_flags_horizontal = Control.SIZE_EXPAND_FILL
		lbl_owned.horizontal_alignment = HORIZONTAL_ALIGNMENT_CENTER
		
		var hbox = HBoxContainer.new()
		hbox.size_flags_horizontal = Control.SIZE_EXPAND_FILL
		hbox.alignment = BoxContainer.ALIGNMENT_CENTER

		var buy_button = Button.new()
		buy_button.text = "Buy"
		buy_button.connect("pressed", Callable(self, "_on_buy_pressed").bind(species))

		var sell_button = Button.new()
		sell_button.text = "Sell"
		sell_button.connect("pressed", Callable(self, "_on_sell_pressed").bind(species))

		hbox.add_child(buy_button)
		hbox.add_child(sell_button)

		grid.add_child(lbl_species)
		grid.add_child(lbl_size)
		grid.add_child(lbl_buy)
		grid.add_child(lbl_sell)
		grid.add_child(lbl_owned)
		grid.add_child(hbox)

# Helper to update capacity label
func _refresh_capacity_label():
	if inventory and lbl_capacity:
		lbl_capacity.text = "Capacity: %d / %d" % [inventory.capacity_used, inventory.capacity_max]

func _on_buy_pressed(species: String):
	# Check capacity before buying
	var qty_to_buy = 1
	var size_needed = economy.get_size(species) * qty_to_buy
	
	if inventory.get_remaining_capacity() < size_needed:
		print("Not enough inventory space!")
		# TODO: Show this error to the player in the UI
		return

	var result = economy.buy(species, 1, player.money)
	if result.success:
		player.money -= result.money_spent
		inventory.add_item(species, 1, economy.get_price(species))
		_refresh()
	else:
		print(result.error)

func _on_sell_pressed(species: String):
	var result = inventory.remove_item(species, 1)
	if result.success:
		var sale = economy.sell(species, 1)
		# player.money is handled by transaction_complete signal
		_refresh()
	else:
		print(result.error)

func _on_back_pressed():
	market_closed.emit()
	# This seems wrong, should probably just emit signal and let Main.gd handle closing
	# queue_free() # A modal popup should probably do this
	# For now, matching existing code:
	get_tree().change_scene_to_file("res://scenes/Main.tscn")


func _refresh():
	populate_market()
	_refresh_capacity_label()
