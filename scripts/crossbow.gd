extends Area2D
@export var arrow_scene : PackedScene
@onready var animation_player: AnimationPlayer = $AnimationPlayer
var arrow : CharacterBody2D

func _ready() -> void:
	spawn_arrow()
	
func _process(delta: float) -> void:
	if arrow == null:
		spawn_arrow()
	
func spawn_arrow():
	arrow = arrow_scene.instantiate()
	add_child(arrow)
	arrow.position = Vector2.ZERO
	
