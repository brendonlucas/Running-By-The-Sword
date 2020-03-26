extends Area

var tocou
var pista
var animation
var player
func _ready():
	player = get_parent().get_parent().get_node("player/Player")
	pista = get_parent().get_parent().get_node("base_map_1")
	#laser = get_parent().get_node("lasers/laser")

func _physics_process(delta):
	
	var bodies = get_overlapping_bodies()
	for body in bodies:
		if tocou != true and body.name == "Player":
			tocou = true
			pista.change_speed(1.5)
			player.change_speed(1.5)
			


