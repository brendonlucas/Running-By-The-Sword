extends KinematicBody

var MOVE_SPEED = 7#15.75 
var y_velo = 0
var move_mode = 1

func _ready():
	pass
	
func change_speed(new_speed):
	MOVE_SPEED = MOVE_SPEED * new_speed
	
func chage_move(move_type):
	move_mode = move_type
	
func _physics_process(delta):
	if move_mode == 1:

		var is_moving = false
		var move_vec = Vector3()
		move_vec.x += 1
		is_moving = true
	
		move_vec *= MOVE_SPEED
		#move_vec.z
		#move_vec.y = y_velo
		move_and_slide(move_vec, Vector3(0, 1, 0))
		
	elif move_mode == 2:

		var is_moving = false
		var move_vec = Vector3()
		move_vec.y -= 1
		is_moving = true
	
		move_vec *= MOVE_SPEED
		#move_vec.z
		#move_vec.y = y_velo
		move_and_slide(move_vec, Vector3(0, 1, 0))
		
	elif move_mode == 3:
		var is_moving = false
		var move_vec = Vector3()
		move_vec.z += 1
		is_moving = true
	
		move_vec *= MOVE_SPEED
		#move_vec.z
		#move_vec.y = y_velo
		move_and_slide(move_vec, Vector3(0, 1, 0))
	
	



