extends Node

var health = 100
var damage = 1
var strength = 1

var equipment = {
	"Weapon" = null,
	"Chest" = null,
	"Helmate" = null,
}

func _ready() -> void:
	equipment["Weapon"] = Weapon.new({"Strength" = 5}, "the dingle sword")
	print(equipment.get("Weapon")._returnName())
	
