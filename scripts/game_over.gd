extends Control

@onready var total_score_label: Label = $TotalScore

func _process(delta: float) -> void:
	total_score_label.text = "Total Score: %d" % KeepScore.total_score

func _on_restart_button_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/main.tscn")


func _on_quit_button_pressed() -> void:
	get_tree().quit()
