extends Area

var player
var luna
var tocou

func _ready():
	#player = get_parent().get_parent().get_node("player/Player")
	luna = get_parent().get_parent().get_node("luna/scene")
 
	
func _physics_process(delta):
	var bodies = get_overlapping_bodies()
	for body in bodies:
		if body.name == "Player" and tocou != true:
			luna.active_run()
			tocou = true



