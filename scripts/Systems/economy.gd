# /scripts/Systems/economy.gd
extends Node

class_name Economy

# === Base market data ===
var market := {
	"parrot": {"buy_price": 300, "sell_price": 500, "supply": 80, "demand": 50, "risk": 0.1},
	"python": {"buy_price": 600, "sell_price": 900, "supply": 40, "demand": 70, "risk": 0.25},
	"turtle": {"buy_price": 150, "sell_price": 300, "supply": 100, "demand": 20, "risk": 0.05},
	"lemur": {"buy_price": 1200, "sell_price": 2000, "supply": 10, "demand": 90, "risk": 0.4},
}

# === Tunables ===
const MARKET_VOLATILITY := 0.2
const BASE_PROFIT_MARGIN := 0.05

signal market_updated(species: String)
signal transaction_complete(profit: float, message: String)

# === Public API ===
func get_price(species: String, is_buy: bool = true) -> float:
	if !market.has(species):
		push_warning("Unknown species: " + species)
		return 0
	return market[species]["buy_price"] if is_buy else market[species]["sell_price"]

func update_market() -> void:
	for species in market.keys():
		var m = market[species]
		var volatility = randf_range(-MARKET_VOLATILITY, MARKET_VOLATILITY)
		m["buy_price"] *= 1.0 + volatility
		m["sell_price"] *= 1.0 + volatility
		m["buy_price"] = clamp(m["buy_price"], 50, 9999)
		m["sell_price"] = clamp(m["sell_price"], 100, 20000)
		market_updated.emit(species)

func buy(species: String, qty: int, player_money: float) -> Dictionary:
	if !market.has(species):
		return {"success": false, "error": "Invalid species"}
	var total_cost = market[species]["buy_price"] * qty
	if player_money < total_cost:
		return {"success": false, "error": "Not enough money"}

	market[species]["supply"] = max(0, market[species]["supply"] - qty)
	market[species]["demand"] += qty / 2
	return {
		"success": true,
		"money_spent": total_cost,
		"species": species,
		"quantity": qty
	}

func sell(species: String, qty: int) -> Dictionary:
	if !market.has(species):
		return {"success": false, "error": "Invalid species"}

	var total_revenue = market[species]["sell_price"] * qty
	var risk = market[species]["risk"]
	var bust = randf() < risk
	var profit = total_revenue - (market[species]["buy_price"] * qty)
	profit += profit * BASE_PROFIT_MARGIN

	if bust:
		profit *= 0.25
		transaction_complete.emit(profit, "Shipment seized. Partial payout only.")
		return {"success": true, "profit": profit, "busted": true}

	transaction_complete.emit(profit, "Sold " + str(qty) + " " + species + "(s).")
	return {"success": true, "profit": profit, "busted": false}
