extends Node2D

@onready var score_label: Label = $CanvasLayer/ScoreLabel
@onready var damage: AudioStreamPlayer2D = $audio/damage
@onready var collect_gem: AudioStreamPlayer2D = $audio/collect_gem

var score_list: Array
var hearts_list: Array
var hearts = 3

func _ready() -> void:
	var hearts_bar: HBoxContainer = $CanvasLayer/HeartsBar
	for heart in hearts_bar.get_children():
		hearts_list.append(heart)

func _process(delta: float) -> void:
	score_label.text = "Score: %d" % KeepScore.score

func add_score():
	KeepScore.score += 1
	collect_gem.play()

func score_to_list_reset():
	score_list.append(KeepScore.score)
	damage.play()
	hearts -= 1
	update_heart_display()
	KeepScore.score = 0
	if len(score_list) >= 3:
		game_over()

func update_heart_display():
	for i in range(hearts_list.size()):
		hearts_list[i].visible = i < hearts

func game_over():
	print("Game Over")
	
	for past_score in score_list:
		KeepScore.total_score += past_score
		
	print("Total Score: ", KeepScore.total_score)
	get_tree().change_scene_to_file("res://scenes/game_over.tscn")
