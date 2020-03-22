extends Area

var player
var luna
var tocou
var label_text

func _ready():
	luna = get_parent().get_parent().get_node("luna/scene")
 
	
func _physics_process(delta):
	var bodies = get_overlapping_bodies()
	for body in bodies:
		if body.name == "Player" and tocou != true:
			luna.change_speed_fast()
			
			tocou = true



