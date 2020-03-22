extends Area

var player
var luna
var tocou
var label_text
var cam_animation

func _ready():
	#player = get_parent().get_parent().get_node("player/Player")
	luna = get_parent().get_parent().get_node("luna/scene")
	label_text = get_parent().get_parent().get_parent().get_node("player/Player/UI_text/Label")
	cam_animation = get_parent().get_parent().get_parent().get_node("AnimationPlayer")
	
func _physics_process(delta):
	var bodies = get_overlapping_bodies()
	for body in bodies:
		if body.name == "Player" and tocou != true:
			label_text.set_text("Liz: Quem é você? \nDevolva a Espada!")
			cam_animation.play("change_cam_text2")
			tocou = true



