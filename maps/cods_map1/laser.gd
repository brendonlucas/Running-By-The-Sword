extends KinematicBody

var MOVE_SPEED = 7
var y_velo = 0
func _ready():
	pass

func change_speed(speed):
	MOVE_SPEED = MOVE_SPEED * speed
	
func _physics_process(delta):
	var is_moving = false
	#var move_vec = Vector3()
	#move_vec.x -= 1
	#move_vec *= MOVE_SPEED
	#move_vec.z
	#move_vec.y = y_velo
	#move_and_slide(move_vec, Vector3(0, 1, 0))


	
