extends Area

var player
var tocou
var player_animate
var map

func _ready():
	player = get_parent().get_parent().get_parent().get_node("player/Player")
	player_animate = get_parent().get_parent().get_parent().get_node("player/Player/target/AnimationPlayer")
	map = get_parent().get_parent().get_parent().get_node("base_map")
	
	
func _physics_process(delta):
	var bodies = get_overlapping_bodies()
	for body in bodies:
		if body.name == "Player" and tocou != true:
			player.super_jump(25)
			player.invert_controls(1)
			player_animate.play("rotate_player-reset")
			map.change_rotation()
			tocou = true



