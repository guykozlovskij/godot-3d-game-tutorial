extends CharacterBody3D

@export var speed = 14

@export var fall_acceleration = 75

# The target_velocity is a 3D vector combining a speed with a direction. 
# Here, we define it as a property because we want to update and reuse its value across frames.
var target_velocity = Vector3.ZERO

func _physics_process(delta):
	var direction = Vector3.ZERO
	
	if Input.is_action_pressed("move_right"):
		direction.x += 1
	if Input.is_action_pressed("move_left"):
		direction.x -= 1
	if Input.is_action_pressed("move_back"):
		direction.z += 1
	if Input.is_action_pressed("move_forward"):
		direction.z -= 1
