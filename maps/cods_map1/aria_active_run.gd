extends Area

var animate_player
var tocou

func _ready():
	animate_player = get_parent().get_parent().get_node("player/Player/AnimationPlayer")
	
func _physics_process(delta):
	var bodies = get_overlapping_bodies()
	for body in bodies:
		if body.name == "Player" and tocou != true:
			animate_player.play("anm_02076008")
			tocou = true
