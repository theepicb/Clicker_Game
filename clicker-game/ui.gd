extends Control

@export_range(0, 1) var SCREEN_RATIO = 0.55

func _ready() -> void:
	size = Vector2(get_viewport_rect().size.x, get_viewport_rect().size.y)
	position = Vector2(0, 0)
