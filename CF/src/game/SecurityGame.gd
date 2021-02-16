extends Control

export var timeline = 'Intro'
export var MAX_CODE = 999999
export var MIN_CODE = 100000
var code
var digits
var new_dialog
var input = 0

func _ready():
	#new_dialog = Dialogic.start(timeline)
	#add_child(new_dialog)
	#new_dialog.connect("dialogic_signal", self, '_signal_from_dialogic')
	code = generate_code()
	digits = digit_count(code)
	$HBox/VBox/Code.text = String(code)

func _signal_from_dialogic(value):
	if value =="show":
		pass
	pass

func generate_code():
	var rng = RandomNumberGenerator.new()
	rng.randomize()
	return rng.randi_range(MIN_CODE, MAX_CODE)

func add(n):
	if digits > 0:
		input += n * pow(10,digits-1)
		digits-=1
		update_input()
	pass
	
func digit_count(n):
	var d = 0
	while n > 0:
		n = n/10
		d +=1
	print("total digits: ",d)
	return d
func update_input():
	$HBox/VBox/InputText.text = "Input: " + String(input)


func _process(delta):
	$HBox/CNumber.text = String(Global.round_place($Timer.time_left,2))
	pass

func _on_1_pressed():
	add(1)
	pass # Replace with function body.


func _on_2_pressed():
	add(2)
	pass # Replace with function body.

func _on_3_pressed():
	add(3)
	pass # Replace with function body.


func _on_4_pressed():
	add(4)
	pass # Replace with function body.


func _on_5_pressed():
	add(5)
	pass # Replace with function body.


func _on_6_pressed():
	add(6)
	pass # Replace with function body.


func _on_7_pressed():
	add(7)
	pass # Replace with function body.


func _on_8_pressed():
	add(8)
	pass # Replace with function body.


func _on_9_pressed():
	add(9)
	pass # Replace with function body.
