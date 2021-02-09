extends Control


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Volume_value_changed(value):
	AudioServer.set_bus_volume_db(AudioServer.get_bus_index("Master"),linear2db(value))
	pass # Replace with function body.


func _on_Fullscreen_pressed():
	OS.set_window_fullscreen(true)
	pass # Replace with function body.


func _on_Windowed_pressed():
	OS.set_window_fullscreen(false)
	pass # Replace with function body.
