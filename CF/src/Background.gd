class_name background
extends Node2D

signal change_background

# Called when the node enters the scene tree for the first time.
func _ready():
	connect("change_background",self,"_change_background")
	emit_signal("change_background")
	pass # Replace with function body.

func _change_background():
	print("Changing Background")
	if $day1.is_visible():
		$day1.set_visible(false)
		$night1.set_visible(true)
	else:
		$day1.set_visible(true)
		$night1.set_visible(false)
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
