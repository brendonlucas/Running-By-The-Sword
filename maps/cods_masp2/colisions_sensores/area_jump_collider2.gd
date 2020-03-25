extends Area

var player
var tocou
var player_animate
var map
var timer
var time_start = false

func _ready():
	player = get_parent().get_parent().get_parent().get_node("player/Player")
	#player_animate = get_parent().get_parent().get_parent().get_node("player/Player/target/AnimationPlayer")
	player_animate = get_parent().get_parent().get_parent().get_node("player/Player")
	map = get_parent().get_parent().get_parent().get_node("base_map")
	timer = get_parent().get_node("Timer")
	
func _physics_process(delta):
	var bodies = get_overlapping_bodies()
	for body in bodies:
		if body.name == "Player" and tocou != true:
			timer.start()
			time_start = true
			map.change_rotation()
			player.invert_controls(4)
			player.super_jump(25)
			tocou = true

	if timer.time_left == 0 and time_start:
		time_start= false
		player_animate.rotate_object_local(Vector3(0, 1, 0), PI)
		#player_animate.play("rotate_player")

