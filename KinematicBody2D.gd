extends KinematicBody2D


var money = 0
var velocity = Vector2(0,0)

func _physics_process(delta):
	if Input.is_action_pressed("move_left"):
		velocity.x = -100
	elif Input.is_action_pressed("move_right"):
		velocity.x = 100
	
	move_and_slide(velocity)
	velocity.x = lerp(velocity.x, 0, 0.1)


