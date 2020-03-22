extends Area

var player
var luna
var tocou
var pista

func _ready():
	pista = get_parent().get_parent().get_node("base_map_1")
	luna = get_parent().get_node("luna/scene")
 
	
	
func _physics_process(delta):
	var bodies = get_overlapping_bodies()
	for body in bodies:
		if body.name == "Player" and tocou != true:
			luna.active_animation()
			luna.active_jumpfall()
			pista.change_speed_slow()
			tocou = true
			



