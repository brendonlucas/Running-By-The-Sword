extends Area

var laser
var player
var anim_beats_e
var beats_e
var anim_beats_d
var beats_d
var tocou
var chao

func _ready():
	laser = get_parent().get_parent().get_node("lasers/laser/Laser_machine/AnimationPlayer")
	player = get_parent().get_parent().get_node("player/Player")
	anim_beats_d = get_parent().get_node("beats_block/beats_d/Block_beat/AnimationPlayer")
	anim_beats_e = get_parent().get_node("beats_block/beats_e/Block_beat_2/AnimationPlayer")
	beats_d = get_parent().get_node("beats_block/beats_d")
	beats_e = get_parent().get_node("beats_block/beats_e")
	
func _physics_process(delta):
	var bodies = get_overlapping_bodies()
	for body in bodies:
		if body.name == "Player" and tocou != true:
			tocou = true
			#chao.disabled = true
			laser.play("laser")
			anim_beats_e.play("beat")
			beats_e.show()
			anim_beats_d.play("beat")
			beats_d.show()
			
