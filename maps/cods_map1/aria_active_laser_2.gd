extends Area

var laser
var player
var tocou
var laser_object

func _ready():
	laser = get_parent().get_parent().get_node("base_map_1/laser2/Laser_machine/AnimationPlayer")
	laser_object = get_parent().get_parent().get_node("base_map_1/laser2")
	player = get_parent().get_parent().get_node("player/Player")
	
func _physics_process(delta):
	var bodies = get_overlapping_bodies()
	for body in bodies:
		if body.name == "Player" and tocou != true:
			tocou = true
			laser_object.active_laser()
			laser.play("laser")
			
			
