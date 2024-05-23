extends Node2D
class_name Movement

@export var speed: int
@export var characterBody2D: CharacterBody2D 
var direction: Vector2
var isDashing = false
@export var dashSpeed: int

func _physics_process(delta):
	direction = direction.normalized()
	if isDashing:
		direction *= dashSpeed
	else:
		direction *= speed
	characterBody2D.velocity = direction
