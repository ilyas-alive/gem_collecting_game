extends CharacterBody2D

@export var move_speed = 100.0
var direction : Vector2

func _process(delta: float) -> void:
	if position.x >= 1152:
		queue_free()

func _physics_process(delta: float) -> void:
	direction.x = 1
	velocity = delta * move_speed * direction.normalized()
	move_and_slide()

	for i in get_slide_collision_count():
		var collision = get_slide_collision(i)
		if collision.get_collider() is CharacterBody2D:
			print("Hit a CharacterBody2D")
			queue_free()
