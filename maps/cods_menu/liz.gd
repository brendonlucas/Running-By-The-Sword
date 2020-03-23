extends Spatial

var animate_liz
var current_animation
var fim_atak
onready var time = get_node("Timer")
var time_anim = 1
var is_on_active = true

func _ready():
	animate_liz = get_node("Player/AnimationPlayer")
	animate_liz.play("anm_00070001_s",true)
	time.start()
	
func _physics_process(delta):
	current_animation = animate_liz.current_animation
	if current_animation != "anm_00070001_s":
		fim_atak = true
	if fim_atak and is_on_active:
		is_on_active = false
		animate_liz.play("anm_00070001_l",true)
	
	if time.time_left == 0:
		time.start()
		if time_anim == 1:
			animate_liz.play("anm_02000033",true)
			time_anim = 2
		elif time_anim == 2:
			animate_liz.play("anm_02000032",true)
			time_anim = 3
		elif time_anim == 3:
			animate_liz.play("anm_02000030",true)
			time_anim = 1
			
