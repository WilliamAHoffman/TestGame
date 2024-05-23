extends CharacterBody2D

@export var movement: Movement

func move():
	movement.direction = Vector2.ZERO
	
	if Input.is_action_pressed("up") && Input.is_action_pressed("down"):
		movement.direction.y = 0
	elif Input.is_action_pressed("up"):
		movement.direction.y = -1
	elif Input.is_action_pressed("down"):
		movement.direction.y = 1

	if Input.is_action_pressed("left") && Input.is_action_pressed("right"):
		movement.direction.x = 0
	elif Input.is_action_pressed("left"):
		movement.direction.x = -1
	elif Input.is_action_pressed("right"):
		movement.direction.x = 1

func playerRotation():
	var target_position = get_global_mouse_position()
	var entity_position = global_position
	var mouse_local = Vector2(target_position.x - entity_position.x, target_position.y - entity_position.y)
	global_rotation = mouse_local.angle()
	

func _process(delta):
	move()
	playerRotation()

func _physics_process(delta):
	move_and_slide()
