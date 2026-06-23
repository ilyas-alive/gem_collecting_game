extends Node2D

@export var player_controller : Playercontroller
@onready var animation_player: AnimationPlayer = $AnimationPlayer
@onready var sprite_2d: Sprite2D = $Sprite2D

func _process(delta: float) -> void:
	sprite_2d.flip_h = false

	if player_controller.velocity.length() > 0.0:
		if player_controller.player_facing == player_controller.Facing.UP:
			animation_player.play("move_up")
		elif player_controller.player_facing == player_controller.Facing.DOWN:
			animation_player.play("move_down")
		elif player_controller.player_facing == player_controller.Facing.LEFT:
			animation_player.play("move_left")
		elif player_controller.player_facing == player_controller.Facing.RIGHT:
			animation_player.play("move_left")
			sprite_2d.flip_h = true
	else:
		if player_controller.player_facing == player_controller.Facing.UP:
			animation_player.play("idle_up")
		elif player_controller.player_facing == player_controller.Facing.DOWN:
			animation_player.play("idle_down")
		elif player_controller.player_facing == player_controller.Facing.LEFT:
			animation_player.play("idle_left")
		elif player_controller.player_facing == player_controller.Facing.RIGHT:
			animation_player.play("idle_left")
			sprite_2d.flip_h = true
