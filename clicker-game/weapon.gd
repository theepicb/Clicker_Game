class_name Weapon
extends Equipment

var stats = {}
var itemName: String = ""


func _init(input: Dictionary = {}, itemNameIn: String = "") -> void:
	if  input == {}:
		push_warning("empty weapon created")
		queue_free()
	
	stats = input
	itemName = itemNameIn
	pass

func _getStats () -> Dictionary:
	return stats

func _returnName() -> String:
	return itemName
