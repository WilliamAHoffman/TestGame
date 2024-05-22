extends CharacterBody2D

@export var movement: Movement

func _process(delta):
	
	movement.direction = Vector2.ZERO
	
	if Input.is_action_pressed("up") && Input.is_action_pressed("down"):
		movement.direction = Vector2(movement.direction.x,0)
	elif Input.is_action_pressed("up"):
		movement.direction = Vector2(movement.direction.x,-1);
	elif Input.is_action_pressed("down"):
		movement.direction = Vector2(movement.direction.x,1);

	if Input.is_action_pressed("left") && Input.is_action_pressed("right"):
		movement.direction = Vector2(0,movement.direction.y)
	elif Input.is_action_pressed("left"):
		movement.direction = Vector2(-1,movement.direction.y);
	elif Input.is_action_pressed("right"):
		movement.direction = Vector2(1,movement.direction.y);
	

func _physics_process(delta):
	move_and_slide()
