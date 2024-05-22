extends Node2D
class_name Movement

@export var speedMult: int
@export var characterBody2D: CharacterBody2D 
var direction: Vector2

func _physics_process(delta):
	direction = direction.normalized()
	direction *= speedMult
	characterBody2D.velocity = direction
