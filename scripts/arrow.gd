extends CharacterBody2D
class_name Arrow

@export var move_speed = 700.0
var direction : Vector2


func _ready() -> void:
	direction = Vector2(1, 0)

func _physics_process(delta: float) -> void:
	velocity = direction * (move_speed+ (KeepScore.score * 40))
	move_and_slide()
	for i in get_slide_collision_count():
		var collision = get_slide_collision(i)
		if collision.get_collider() is Edge:
			queue_free()
		elif collision.get_collider() is Playercontroller:
			get_parent().get_parent().score_to_list_reset()
			queue_free()
