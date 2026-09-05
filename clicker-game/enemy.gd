class_name Enemy
extends Node



var health: int
var level: int
var damage: int
var drop_table: Dictionary
var enemyName: String
var subtype: int

func _init(inLevel:int, inEnemyName:String, inSubtype: int = 0, inDropTable: Dictionary = {}) -> void:
	level = inLevel
	enemyName = inEnemyName
	subtype = inSubtype
	drop_table = inDropTable

static func createEnemy (inLevel: int, type: Enums.enemy, inSubtype: int = 0):
	match type:
		Enums.enemy.goblin:
			createGoblin(inLevel, inSubtype)

static func createGoblin(inLevel: int, inSubtype: int) -> Enemy:
	match inSubtype:
		0:
			return Enemy.new(inLevel, "Goblin", inSubtype, {"gold": randf_range(1, inLevel)})
	
	push_error("INVALID SUBTYPE OF GOBLIN: ", inSubtype)
	return null
