extends Area

var tocou
var map
var player
var animate_rotate_player
var animate_player

func _ready():
	map = get_parent().get_parent().get_parent().get_node("base_map")
	player= get_parent().get_parent().get_parent().get_node("player/Player")
	animate_player= get_parent().get_parent().get_parent().get_node("player/Player/AnimationPlayer")
	animate_rotate_player = get_parent().get_parent().get_parent().get_node("player/Player/target/AnimationPlayer")
	
func _physics_process(delta):
	var bodies = get_overlapping_bodies()
	for body in bodies:
		if body.name == "Player" and tocou != true:
			map.stop_move()
			map.active_front_move(true)
			animate_player.play("anm_02076008")
			#rotate_object_local(Vector3(1, 0, 0), PI/2)
			animate_rotate_player.play("rotate_final_player")
			tocou = true



