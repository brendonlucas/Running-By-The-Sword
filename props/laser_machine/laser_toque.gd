extends Spatial

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
	pass



