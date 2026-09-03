extends Control


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	position = Vector2(0, 0)
	size = Vector2(get_viewport_rect().size.x, get_viewport_rect().size.y * $"..".SCREEN_RATIO)
	var button = Button.new()
	button.size = size
	add_child(button)
	pass 
