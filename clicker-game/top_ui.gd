extends Control

var enemies = [Enemy]

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	position = Vector2(0, 0)
	size = Vector2(get_viewport_rect().size.x, get_viewport_rect().size.y * $"..".SCREEN_RATIO)
	if (enemies.is_empty()):
		pass
	pass 

func _gui_input(event: InputEvent):
	if event is InputEventMouseButton:
		if event.button_index == MOUSE_BUTTON_LEFT and event.pressed:
			print("Mouse down!")
