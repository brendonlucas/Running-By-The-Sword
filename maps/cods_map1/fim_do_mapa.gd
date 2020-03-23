extends Area

var tocou
var ui_pontuacao

func _ready():
	ui_pontuacao = get_parent().get_parent().get_parent().get_node("UI_pontuacao")
	
func _physics_process(delta):
	var bodies = get_overlapping_bodies()
	for body in bodies:
		if body.name == "Player" and tocou != true:
			ui_pontuacao.show()
			
			tocou = true
