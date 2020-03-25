extends Area

var tocou
var map_animation
var player
var animate_rotate_player
var animate_player
var ball_animate
var luna_anim
var music

func _ready():
	map_animation = get_parent().get_parent().get_node("AnimationPlayer")
	luna_anim = get_parent().get_parent().get_node("luna/luna/AnimationPlayer")
	music = get_parent().get_parent().get_parent().get_node("player/Player/target/music")

func _physics_process(delta):
	var bodies = get_overlapping_bodies()
	for body in bodies:
		if body.name == "luna" and tocou != true:
			map_animation.play("afundar_mapa")
			luna_anim.play("anm_90002004",true,-1)
			music.stop()
			tocou = true



