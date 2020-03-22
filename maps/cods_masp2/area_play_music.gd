extends Area

var music
var tocou
var cam_animate

func _ready():
	music = get_parent().get_parent().get_parent().get_node("player/Player/target/music")
	cam_animate= get_parent().get_parent().get_parent().get_node("player/Player/target/AnimationPlayer")

	
func _physics_process(delta):
	var bodies = get_overlapping_bodies()
	for body in bodies:
		if body.name == "Player" and tocou != true:
			cam_animate.play("intro")
			music.play()
			tocou = true



