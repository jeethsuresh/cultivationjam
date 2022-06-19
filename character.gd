extends KinematicBody2D


var money = 0
var velocity = Vector2(0,0)

func _physics_process(delta):
	if Input.is_action_pressed("move_left"):
		velocity.x = -100
	elif Input.is_action_pressed("move_right"):
		velocity.x = 100
		
	velocity.y = velocity.y + 30
	
	if Input.is_action_just_pressed("jump"):
		velocity.y = -1000
	
	move_and_slide(velocity)
	velocity.x = lerp(velocity.x, 0, 0.1)
	velocity.y = lerp(velocity.y, 0, 0.1)
	
func _process(delta):
	self.get_child(3).text = "Money: " + str(money)

func make_money(to_add: int):
	money = money + to_add
	
