extends KinematicBody2D

var moveSpeed = 250

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _physics_process(delta):
		var motion = Vector2()
		
		#Simple Movement
		if Input.is_action_pressed("up"):
			motion.y -= 1
		if Input.is_action_pressed("down"):
			motion.y += 1
		if Input.is_action_pressed("right"):
			motion.x += 1
		if Input.is_action_pressed("left"):
			motion.x -= 1
		
		# If Space has just been pressed, speed is multiplied by 2
		if Input.is_action_just_pressed("space"):
			moveSpeed = moveSpeed * 2
		
		# When Space is released, speed goes back to the default value
		if Input.is_action_just_released("space"):
			moveSpeed = 250
		
		# Normalizes motion and uses move_and_slide to move Player
		motion - motion.normalized()
		motion = move_and_slide(motion * moveSpeed)
		
		# Rotates Player sprite to the mouses current position
		look_at(get_global_mouse_position())
