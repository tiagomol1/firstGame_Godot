extends KinematicBody2D

const SPEED = 200
var motion = Vector2()

func _physics_process(delta):
	
	if Input.is_action_pressed("ui_right"):
		motion.x = SPEED
	elif Input.is_action_pressed("ui_left"):
		motion.x = -SPEED
	elif Input.is_action_pressed("ui_up"):
		motion.y = -SPEED
	elif Input.is_action_pressed("ui_down"):
		motion.y = SPEED
	else: 
		motion.x = 0
		motion.y = 0
	
	motion = move_and_slide(motion)
