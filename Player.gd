extends KinematicBody2D

var moveSpeed = 250
var bulletSpeed = 2000
var bullet = preload("res://Bullet.tscn")

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


		# When LMB is pressed, fire a bullet
		if Input.is_action_just_pressed("LMB"):
			fire()
			
		
func fire():
	var bullet_inst = bullet.instance()
	bullet_inst.position = get_global_position()
	bullet_inst.rotation_degrees = rotation_degrees
	bullet_inst.apply_impulse(Vector2(),Vector2(bulletSpeed,0).rotated(rotation))
	get_tree().get_root().call_deferred("add_child",bullet_inst)
	
	
