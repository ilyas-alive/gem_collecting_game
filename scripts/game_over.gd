extends Control

@onready var total_score_label: Label = $TotalScore
@onready var game_over_sound: AudioStreamPlayer2D = $GameOverSound
@onready var quit_button: Button = $VBoxContainer/QuitButton

func _ready() -> void:
	game_over_sound.play()
	if OS.has_feature("web"):
		quit_button.visible = false

func _process(delta: float) -> void:
	total_score_label.text = "Total Score: %d" % KeepScore.total_score

func _on_restart_button_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/main.tscn")


func _on_quit_button_pressed() -> void:
	get_tree().quit()
