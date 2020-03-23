extends Area

var tocou
var player
var map
var music
var ui_falha

func _ready():
	player = get_parent().get_parent().get_parent().get_parent().get_node("player/Player")
	map = get_parent().get_parent().get_parent().get_parent().get_node("base_map_1")
	music = get_parent().get_parent().get_parent().get_parent().get_node("player/Player/target/music")
	ui_falha = get_parent().get_parent().get_parent().get_parent().get_node("UI_falha")
	
func _physics_process(delta):
	var bodies = get_overlapping_bodies()
	for body in bodies:
		if body.name == "Player" and tocou != true:
			player.player_death()
			map.active_move(false)
			music.stop()
			ui_falha.show()
			tocou = true



