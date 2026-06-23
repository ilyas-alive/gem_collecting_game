extends Node2D
var score = 0

func _process(delta: float) -> void:
	print(score)
func add_score():
	score += 1
