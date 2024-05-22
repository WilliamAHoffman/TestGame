extends CharacterBody2D

@export var movement: Movement
@export var target: Node2D

func _physics_process(delta):
	var target_position = target.global_position
	var entity_position = global_position
	movement.direction = Vector2(target_position.x - entity_position.x, target_position.y - entity_position.y)
	
	move_and_slide()
