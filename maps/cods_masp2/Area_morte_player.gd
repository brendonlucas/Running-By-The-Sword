extends Area

var tocou
var player
var map
var music
var ui_falha

func _ready():
	player = get_parent().get_parent().get_node("Player")
	map = get_parent().get_parent().get_parent().get_node("base_map")
	music = get_parent().get_node("target/music")
	ui_falha = get_parent().get_parent().get_parent().get_node("UI_falha")
	pass
	
func _physics_process(delta):
	var bodies = get_overlapping_bodies()
	for body in bodies:
		if body.name == "laser_vertical" and tocou != true or body.name == "laser_horizontal" and tocou != true:
			player.player_death()
			map.stop_move()
			music.stop()
			ui_falha.show()
			tocou = true
			print("morreu")
			



