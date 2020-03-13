extends Spatial


func _ready():
	rotate_y(1)
	#rotate_object_local(Vector3(1, 0, 0), PI)

func _physics_process(delta):
	rotate_y(0.001)
	#rotate_object_local(Vector3(1, 0, 0), PI)
	pass
