## AUTOLOADED CLASS FOR COMMON CODE AND FUNCTIONS
extends Node

## returns an input with a random number in a variation
func variation(input: int, vari: int) -> int:
	return max(0, randi_range(input - vari, input + vari))
