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
		
	## INVENTORY
	if value =="hide_inventory":
		$Inventory.hide()
	if value=="show_inventory":
		$Inventory.show()
		
	#AUDIO
	if value.find("play_audio",0) != -1:
		print("processing audio start")
		$Audio.PlayAudio(value.right(10))
		pass
	if value.find("stop_audio",0) != -1:
		print("processing audio start")
		$Audio.StopAudio()
		new_dialog.FX.AudioStreamPlayer.stop()
		pass	
	print("signal called for:", value)


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
