extends Node
class_name Gemspawner

@export var gem_scene : PackedScene
var gem_position: Vector2
var gem : Area2D
@onready var player: Playercontroller = $"../Player"

func _ready() -> void:
	spawn_gem()
	
func _process(delta: float) -> void:
	if gem == null:
		get_parent().add_score()
		spawn_gem()
	
func spawn_gem():
	gem = gem_scene.instantiate()
	var x_position = randi_range(1, 1151) 
	var y_position = randi_range(1, 647)
	add_child(gem)
	gem_position = Vector2(x_position, y_position)
	gem.position = gem_position

func remove_gem():
	if gem != null:
		gem.queue_free()
