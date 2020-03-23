extends Area

var tocou
var player
var map
var music

func _ready():
	player = get_parent().get_parent().get_parent().get_parent().get_node("player/Player")
	map = get_parent().get_parent().get_parent().get_parent().get_node("base_map_1")
	music = get_parent().get_parent().get_parent().get_parent().get_node("player/Player/target/music")

func _physics_process(delta):
	var bodies = get_overlapping_bodies()
	for body in bodies:
		if body.name == "Player" and tocou != true:
			player.player_death()
			map.active_move(false)
			music.stop()
			tocou = true



