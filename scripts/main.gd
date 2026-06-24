extends Node2D
@onready var score_timer: Timer = $ScoreTimer
@onready var score_label: Label = $ScoreLabel

var score_wait : int
var time_left : int
var score = 0
var past_score = 0

func _ready():
	score_timer.timeout.connect(_on_score_timeout)


func _process(delta: float) -> void:
	score_label.text = "Score: %d" % score


func add_score():
	score += 1
	print(score)


func _on_score_timeout():
	game_over()


func game_over():
	print("Game Over")
	get_tree().paused = true
