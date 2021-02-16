extends Control


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
export var CURRENT_PARTNER = ""

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func select_partner(p):
	CURRENT_PARTNER = p
	print("partner set to: ", p)

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
