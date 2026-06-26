extends Control
@onready var button_sound: AudioStreamPlayer2D = $ButtonSound


func _on_start_button_pressed() -> void:
	button_sound.play()
	get_tree().change_scene_to_file("res://scenes/main.tscn")


func _on_quit_button_pressed() -> void:
	get_tree().quit()
