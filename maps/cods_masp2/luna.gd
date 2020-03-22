extends KinematicBody


var animation
var idle = true
var current_anim
var atak = false
var atak_chao = "anm_90001006"


func _ready():
	animation = get_node("AnimationPlayer")
	
func active_anim():
	atak = true
	idle = false

func _physics_process(delta):
	if animation.current_animation == atak_chao:
		atak = true
		
	if idle and !atak:
		
		animation.play("anm_rezero2_002")
		
		
	elif atak:
		animation.play(atak_chao)
		idle = true
		atak = false
	
