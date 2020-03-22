extends Area

var player
var luna
var tocou
var label_text

func _ready():
	luna = get_parent().get_parent().get_node("luna/scene")
	label_text = get_parent().get_parent().get_parent().get_node("player/Player/UI_text/Label")
 
	
func _physics_process(delta):
	var bodies = get_overlapping_bodies()
	for body in bodies:
		if body.name == "Player" and tocou != true:
			label_text.set_text("Luna: Não sou ninguem. \nQuer a espada? \nEntão vem pegar!")
			tocou = true



