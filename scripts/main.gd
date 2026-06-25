extends Node2D
@onready var score_label: Label = $CanvasLayer/ScoreLabel

var score_list: Array
var hearts_list: Array
var hearts = 5
var score = 0

func _ready() -> void:
	var hearts_bar: HBoxContainer = $CanvasLayer/HeartsBar
	for heart in hearts_bar.get_children():
		hearts_list.append(heart)

func _process(delta: float) -> void:
	score_label.text = "Score: %d" % score

func add_score():
	score += 1

func score_to_list_reset():
	score_list.append(score)
	hearts -= 1
	update_heart_display()
	score = 0
	if len(score_list) >= 5:
		game_over()

func update_heart_display():
	for i in range(hearts_list.size()):
		hearts_list[i].visible = i < hearts

func game_over():
	print("Game Over")
	
	var total_score = 0
	for score in score_list:
		total_score += score
		
	print("Total Score: ", total_score)
	get_tree().quit()
