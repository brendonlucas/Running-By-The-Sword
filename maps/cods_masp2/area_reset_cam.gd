extends Area

var cam_animate
var tocou
var luna_anim

func _ready():
	cam_animate = get_parent().get_parent().get_parent().get_node("player/Player/target/AnimationPlayer")
	luna_anim = get_parent().get_parent().get_node("luna/Luna")

func _physics_process(delta):
	var bodies = get_overlapping_bodies()
	for body in bodies:
		if body.name == "Player" and tocou != true:
			cam_animate.play("anim_cam_1-reset")
			luna_anim.active_anim()
			tocou = true



