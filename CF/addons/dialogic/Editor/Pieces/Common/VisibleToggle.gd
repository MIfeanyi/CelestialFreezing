tool
extends CheckBox

var current_piece
var is_disabled = false


func _ready():
	# Gotta love the nodes system some times
	current_piece = get_parent().get_parent().get_parent().get_parent()
	connect("toggled", self, "_on_VisibleToggle_toggled")


func disabled():
	self_modulate = Color(0,0,0,0)
	is_disabled = true


func _on_VisibleToggle_toggled(button_pressed):
	if is_disabled:
		return
	var current_rect_size = current_piece.get("rect_size")
	if button_pressed:
		current_piece.get_node("PanelContainer/VBoxContainer/Header/Preview").hide()
		
		var index = 0
		for node in current_piece.get_node("PanelContainer/VBoxContainer").get_children():
			if index > 0:
				node.show()
			index += 1
	else:
		if current_piece.has_node("PanelContainer/VBoxContainer/Header/Preview"):
			current_piece.get_node("PanelContainer/VBoxContainer/Header/Preview").show()
			
			var index = 0
			for node in current_piece.get_node("PanelContainer/VBoxContainer").get_children():
				if index > 0:
					node.hide()
				index += 1
			if "preview" in current_piece:
				current_piece.get_node("PanelContainer/VBoxContainer/Header/Preview").text = current_piece.preview
			current_piece.set("rect_size", Vector2(current_rect_size.x,0))
	release_focus()
