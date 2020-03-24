extends Area

var tocou
var ui_pontuacao
var map


func _ready():
	ui_pontuacao = get_parent().get_parent().get_parent().get_node("UI_pontuacao")
	map = get_parent().get_parent().get_parent().get_node("base_map_1")

func _physics_process(delta):
	var bodies = get_overlapping_bodies()
	for body in bodies:
		if body.name == "Player" and tocou != true:
			ui_pontuacao.show_pontuacao()
			map.change_speed(0)
			
			
			
			tocou = true
