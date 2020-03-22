extends KinematicBody


var jump_fall_anim = "jump_fall"
var run_animation = "anm_02110002"
var animation
var MOVE_SPEED = 5
var y_velo = 0
var active = false
var run_active = false
var jumpfall_active = false

func _ready():
	animation = get_node("AnimationPlayer")
	
func change_speed_fast():
	MOVE_SPEED = 10
	
func _physics_process(delta):
	if !active:
		hide()
		
	if run_active:
		animation.play(run_animation)
		
	if active:
		show()
		if jumpfall_active:
			jumpfall_active = false
			animation.play(jump_fall_anim)
		var move_vec = Vector3()
		move_vec.z -= 1
		move_vec *= MOVE_SPEED
		move_and_slide(move_vec, Vector3(0, 1, 0))
		
func active_animation():
	active = true
	
func active_jumpfall():
	jumpfall_active = true
	
func active_run():
	jumpfall_active = false
	run_active = true
	
	
	


	
