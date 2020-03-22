extends KinematicBody

var colider_chao2
var speed = 0.001
var type_direction = 1
var move_stop = false
var front_move = false

func _ready():
	pass
	
func stop_move():
	move_stop = true
	
func change_rotation():
	if type_direction == 1:
		type_direction = 2
	else:
		type_direction = 1
	
func change_speed_1():
	speed = speed + 0.001
	
func active_front_move(type):
	front_move = type
	
func _physics_process(delta):
	var move_vec = Vector3()
	
	if !move_stop and type_direction == 1:
		rotate_y(speed)
		
	elif !move_stop and type_direction == 2:
		rotate_y(-speed)
		
	if front_move:
		move_vec.x -= 1
		move_vec *= 2
		move_and_slide(move_vec, Vector3(0, 1, 0))
	
	#rotate_object_local(Vector3(1, 0, 0), PI)

