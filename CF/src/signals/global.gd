class_name signals
extends Node


## AUDIO ##
static func audio_start(d):
	return d
static func audio_stop(d):
	d.FX.AudioStreamPlayer.stop()
	pass

static func round_place(num,places): #https://godotengine.org/qa/29110/how-to-round-to-a-specific-decimal-placehttps://godotengine.org/qa/29110/how-to-round-to-a-specific-decimal-place
	return (round(num*pow(10,places))/pow(10,places))




# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
