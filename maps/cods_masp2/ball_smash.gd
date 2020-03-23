extends Area

var tocou
var map_animation
var player
var animate_rotate_player
var animate_player
var ball_animate
var camera_anim

func _ready():
	map_animation = get_parent().get_parent().get_node("AnimationPlayer")
	
	
func _physics_process(delta):
	var bodies = get_overlapping_bodies()
	for body in bodies:
		if body.name == "luna" and tocou != true:
			map_animation.play("afundar_mapa")
			
			tocou = true



