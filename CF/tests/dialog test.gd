extends Control


func _ready():
	var new_dialog = Dialogic.start('Intro')
	add_child(new_dialog)
	new_dialog.connect("dialogic_signal", self, '_signal_from_dialogic')

func _signal_from_dialogic(value):
	if value=="change_background":
		$Background._change_background()
		
	print("signal called for:", value)


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
