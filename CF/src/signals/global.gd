class_name signals
extends Node


## AUDIO ##
static func audio_start(d):
	pass
static func audio_stop(d):
	d.FX.AudioStreamPlayer.stop()
	pass



# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
