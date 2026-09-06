class_name Enemy
extends Node

var health: int
var level: int
var damage: int
var drop_table: Dictionary
var enemyName: String
var subtype: int

func _init(inLevel:int = 0, inEnemyName:String = "", inSubtype: int = 0, inDropTable: Dictionary = {}, inHealth:int = 0) -> void:
	level = inLevel
	enemyName = inEnemyName
	subtype = inSubtype
	drop_table = inDropTable
	health = inHealth

# ENEMY CREATION FUNCTIONS

static func createEnemy (inLevel: int, type: Enums.enemy, inSubtype: int = 0):
	match type:
		Enums.enemy.goblin:
			createGoblin(inLevel, inSubtype)
		
		Enums.enemy.kobold:
			pass

## Creates a goblin enemy object
static func createGoblin(inLevel: int, inSubtype: int) -> Enemy:
	match inSubtype:
		0:
			return Enemy.new(inLevel, "Goblin", inSubtype, {
				"gold": Common.variation(inLevel + 2, max(1, ceil(inLevel/10.0)))}, inLevel + 2)
	
	push_error("INVALID SUBTYPE OF GOBLIN: ", inSubtype)
	return null
