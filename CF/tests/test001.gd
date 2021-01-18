extends Control


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	var new_dialog = Dialogic.start('Prologue')
	add_child(new_dialog)
	new_dialog.connect("dialogic_signal", self, '_signal_from_dialogic')


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
