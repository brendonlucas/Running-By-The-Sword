extends KinematicBody


var animation
var idle = true
var current_anim
var atak = false
var atak_chao = "anm_90001006"


func _ready():
	animation = get_node("AnimationPlayer")
	animation.play("anm_rezero2_002")
	
func active_anim():
	atak = true
	idle = false

func _physics_process(delta):
	pass
	
