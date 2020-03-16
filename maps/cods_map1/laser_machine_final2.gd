extends KinematicBody

var MOVE_SPEED = 15.75
var y_velo = 0
var active = false

func _ready():
	pass

func active_laser():
	active = true
	
func _physics_process(delta):
	if active:
		var move_vec = Vector3()
		move_vec.z -= 1
		move_vec *= MOVE_SPEED
		move_and_slide(move_vec, Vector3(0, 1, 0))


	
