extends Control

export var timeline = 'Intro'
var new_dialog
func _ready():
	new_dialog = Dialogic.start(timeline)
	add_child(new_dialog)
	new_dialog.connect("dialogic_signal", self, '_signal_from_dialogic')

func _signal_from_dialogic(value):
	if value=="change_background":
		$Background._change_background()
		return
	if value.find("audio_start",0) != -1:
		print("processing audio start")
		signals.audio_start(new_dialog)
		pass
	if value.find("audio_stop",0) != -1:
		print("processing audio start")
		signals.audio_stop(new_dialog)
		pass	
	print("signal called for:", value)


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
