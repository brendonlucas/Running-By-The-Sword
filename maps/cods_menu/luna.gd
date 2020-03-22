extends Spatial

var animate_luna
onready var time = get_node("Timer")
var anim_ola = "anm_rezero2_009"
var anim_time = 1

func _ready():
	time.start()
	animate_luna = get_node("luna/AnimationPlayer")
	animate_luna.play("anm_rezero2_librarymob_000",true)
	
func _process(delta):
	if time.time_left == 0:
		time.start()
		if anim_time == 1:
			animate_luna.play("anm_rezero2_librarymob_000",true)
			anim_time = 2
		elif anim_time == 2:
			animate_luna.play(anim_ola,true)
			anim_time = 3
		elif anim_time == 3:
			animate_luna.play("anm_rezero2_library_001",true)
			anim_time = 1













