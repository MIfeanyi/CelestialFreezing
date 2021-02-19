extends Control

export var timeline = 'Intro'
var new_dialog
func _ready():
	new_dialog = Dialogic.start(timeline)
	add_child(new_dialog)
	new_dialog.connect("dialogic_signal", self, '_signal_from_dialogic')

func _signal_from_dialogic(value):
	## BACKGROUND
	if value=="change_background":
		$Background._change_background()
		return
	
	## PARTNER
	if value.find("select_partner") != -1:
		$Partner.select_partner(value.right(14))

	## INVENTORY
	if value =="hide_inventory":
		$Inventory.hide()
	if value=="show_inventory":
		$Inventory.show()
	if value.find("use_item",0) != -1:
		$Inventory.use_item(value.right(8))
	if value.find("get_item",0) != -1:
		$Inventory.get_item(value.right(8))
	if value.find("add_cash",0) != -1:
		$Inventory.get_item(value.right(8))
	#AUDIO
	if value.find("play_audio",0) != -1:
		print("processing audio start")
		$Audio.PlayAudio(value.right(10))
		pass
	if value.find("stop_audio",0) != -1:
		print("processing audio start")
		$Audio.StopAudio()
		pass	
	print("signal called for:", value)

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
