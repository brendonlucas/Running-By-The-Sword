extends Area

var tocou
var map
var player
var animate_rotate_player
var animate_player
var ball_animate
var camera_anim

func _ready():
	map = get_parent().get_parent().get_parent().get_node("base_map")
	player= get_parent().get_parent().get_parent().get_node("player/Player")
	animate_player= get_parent().get_parent().get_parent().get_node("player/Player/AnimationPlayer")
	animate_rotate_player = get_parent().get_parent().get_parent().get_node("player/Player/target/AnimationPlayer")
	ball_animate = get_parent().get_parent().get_parent().get_node("base_map/ball/ball_smash/AnimationPlayer")
	camera_anim = get_parent().get_parent().get_parent().get_node("player/Player/target/AnimationPlayer")
	
func _physics_process(delta):
	var bodies = get_overlapping_bodies()
	for body in bodies:
		if body.name == "Player" and tocou != true:
			map.active_front_move(false)
			animate_player.play("anm_00070010")
			ball_animate.play("bal_launcher")
			camera_anim.play("cam_move_final")
			tocou = true



