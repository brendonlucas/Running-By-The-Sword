extends Area

var rotarion_player
var player
var tocou
var map
var beat_d
var beat_e


func _ready():
	player = get_parent().get_parent().get_node("player/Player")
	rotarion_player = get_parent().get_parent().get_node("AnimationPlayer")
	map = get_parent().get_parent().get_node("base_map_1")
	beat_d = get_parent().get_node("beats_block/beats_d/Block_beat/AnimationPlayer")
	beat_e = get_parent().get_node("beats_block/beats_e/Block_beat_2/AnimationPlayer")

	
func _physics_process(delta):
	var bodies = get_overlapping_bodies()
	for body in bodies:
		if body.name == "Player" and tocou != true:
			tocou = true
			beat_d.stop(true)
			beat_e.stop(true)
			rotarion_player.play("player_rotation_1")
			player.invert_controls(3)
			map.chage_move(3)
			
			#var c1 = Color("#ffb2d90a")
			#espiral.material_override.albedo_color = new_color
			#print(espiral.name)
			


