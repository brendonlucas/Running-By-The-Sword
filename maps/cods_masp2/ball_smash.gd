extends Area

var tocou
var map_animation
var player
var animate_rotate_player
var animate_player
var ball_animate
var luna_anim
var music
var timer
var timer_active = false
var ui_complete

func _ready():
	map_animation = get_parent().get_parent().get_node("AnimationPlayer")
	luna_anim = get_parent().get_parent().get_node("luna/luna/AnimationPlayer")
	music = get_parent().get_parent().get_parent().get_node("player/Player/target/music")
	timer = get_node("Timer")
	ui_complete = get_parent().get_parent().get_parent().get_node("UI_pontuacao")
	
func _physics_process(delta):
	var bodies = get_overlapping_bodies()
	for body in bodies:
		if body.name == "luna" and tocou != true:
			timer.start()
			timer_active = true
			map_animation.play("afundar_mapa")
			luna_anim.play("anm_90002004",true,-1)
			music.stop()
			tocou = true
	if timer.time_left == 0 and timer_active:
		ui_complete.show_pontuacao()


