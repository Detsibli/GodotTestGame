extends KinematicBody2D

var moveSpeed = 250

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _physics_process(delta):
		var motion = Vector2()
		
		if Input.is_action_pressed("up"):
			motion.y -= 1
		if Input.is_action_pressed("down"):
			motion.y += 1
		if Input.is_action_pressed("right"):
			motion.x += 1
		if Input.is_action_pressed("left"):
			motion.x -= 1
		
		if Input.is_action_just_pressed("space"):
			moveSpeed = moveSpeed * 2
		
		if Input.is_action_just_released("space"):
			moveSpeed = 250
		
		motion - motion.normalized()
		motion = move_and_slide(motion * moveSpeed)
		
		look_at(get_global_mouse_position())
