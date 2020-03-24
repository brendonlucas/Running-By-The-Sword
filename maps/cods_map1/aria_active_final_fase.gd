extends Area

var player
var luna
var tocou
var pista
var musica

func _ready():
	pista = get_parent().get_parent().get_node("base_map_1")
	luna = get_parent().get_node("luna/scene")
	musica = get_parent().get_parent().get_node("player/Player/target/music")
	
	
func _physics_process(delta):
	var bodies = get_overlapping_bodies()
	for body in bodies:
		if body.name == "Player" and tocou != true:
			musica.stop()
			luna.active_animation()
			luna.active_jumpfall()
			pista.change_speed_slow()
			tocou = true
			



