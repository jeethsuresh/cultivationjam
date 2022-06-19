extends Area2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

var entered_body = null

func _process(delta):
	if self.get_child(2).visible == true:
		if Input.is_action_just_pressed("extract_money"):
			entered_body.make_money(1)

func _on_Area2D_body_entered(body):
	self.get_child(2).visible = true
	entered_body = body
	pass # Replace with function body.


func _on_Area2D_body_exited(body):
	self.get_child(2).visible = false
	entered_body = null
	pass # Replace with function body.
