extends Area

var tocou
var ball_animate


func _ready():
	ball_animate = get_parent().get_parent().get_parent().get_node("base_map/ball/ball_smash/AnimationPlayer")
	
func _physics_process(delta):
	var bodies = get_overlapping_bodies()
	for body in bodies:
		print(body.name)
		if body.name == "ball_smash" and tocou != true:
			ball_animate.play("amin_effect_explode")
			print("bateu doido")
			tocou = true



