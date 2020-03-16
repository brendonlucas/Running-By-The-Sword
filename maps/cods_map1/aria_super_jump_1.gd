extends Area

var player
var tocou

func _ready():
	player = get_parent().get_parent().get_node("player/Player")
	
func _physics_process(delta):
	var bodies = get_overlapping_bodies()
	for body in bodies:
		if body.name == "Player" and tocou != true:
			player.super_jump(50)
			tocou = true



