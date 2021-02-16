extends Control

var CURRENT_MODE = "Inventory"
var CASH = 0.00
var OPEN = true

var items = {
	"Bread": {
		"buy_price":5,
		"sell_price":1,
	}
}

func update_cash():
	$Menu/UIModes/Cash.text = "Cash: " + String(CASH)
	
	
func get_item(i):
	for item in items:
		if i == item[0]:
			return true
	pass
	
func use_item(i):
	pass
	
func buy_item(i):
	pass
	
func sell_item(i):
	pass
func add_cash(c):
	CASH +=c
	update_cash()
func use_cash(c):
	CASH -=c
	update_cash()
# Called when the node enters the scene tree for the first time.
func _ready():
	update_cash()
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Close_pressed():
	if OPEN==true:
		$Menu/UIModes.visible = false
		$Menu/InventoryItems.visible = false
		OPEN = false
	else:
		$Menu/UIModes.visible = true
		$Menu/InventoryItems.visible = true
		OPEN = true
	pass # Replace with function body.
