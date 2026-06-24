extends Area2D

@export var arrow_scene : PackedScene
var arrow_position: Vector2
var arrow : CharacterBody2D


func _ready() -> void:
	spawn_arrow()
	
func _process(delta: float) -> void:
	if arrow != null:
		spawn_arrow()

	
func spawn_arrow():
	arrow = arrow_scene.instantiate()
	add_child(arrow)
	arrow_position = Vector2(position.x, position.y)
	arrow.position = arrow_position
	
