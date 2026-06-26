extends Control
@onready var button_sound: AudioStreamPlayer2D = $ButtonSound
@onready var quit_button: Button = $VBoxContainer/QuitButton

func _ready() -> void:
	if OS.has_feature("web"):
		quit_button.visible = false

func _on_start_button_pressed() -> void:
	button_sound.play()
	get_tree().change_scene_to_file("res://scenes/main.tscn")


func _on_quit_button_pressed() -> void:
	get_tree().quit()
