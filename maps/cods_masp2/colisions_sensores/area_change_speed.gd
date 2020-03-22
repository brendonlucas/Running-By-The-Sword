extends Area

var tocou
var map
var player

func _ready():
	map = get_parent().get_parent().get_parent().get_node("base_map")
	player= get_parent().get_parent().get_parent().get_node("player/Player")

func _physics_process(delta):
	var bodies = get_overlapping_bodies()
	for body in bodies:
		if body.name == "Player" and tocou != true:
			map.change_speed_1()
			player.change_speed(1.5)
			tocou = true



