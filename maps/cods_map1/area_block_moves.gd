extends Area

var tocou
var player

func _ready():
	player = get_parent().get_parent().get_node("player/Player")
	
func _physics_process(delta):
	var bodies = get_overlapping_bodies()
	for body in bodies:
		if body.name == "Player" and tocou != true:
			tocou = true
			player.block_moves(true)
			

