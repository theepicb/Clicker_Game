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

static func createCopperSword (level: int, quality: Enums.weaponRarity):
	var dict = {
		"Dam": randi_range(1, level + 1+ (quality * 2)),
		"Str": randi_range(1, level + 1+ (quality * 2)),
		"CC": randf_range(1, 2+quality *  max(1, floor(level / 4.0))) if  quality > 1 else 0.0
	}


	return Weapon.new(dict, "Copper ShortSword")
