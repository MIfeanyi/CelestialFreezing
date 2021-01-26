extends Control
tool

export var NAME ="Example"
export var SELL_PRICE=0.00
export var BUY_PRICE=0.00


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


func _process(delta):
	if Engine.editor_hint:
		$VBoxContainer/Button.text = NAME
		$VBoxContainer/HBoxContainer/BuyPrice.text = String(BUY_PRICE)
		$VBoxContainer/HBoxContainer/SellPrice.text = String(SELL_PRICE)
	pass


func _on_Button_pressed():
	if Engine.editor_hint:
		print("Pressed")
		pass
	else:
		pass
	pass # Replace with function body.
