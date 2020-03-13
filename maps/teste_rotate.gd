extends Area

var tocou
var anima_map
func _ready():
	anima_map = get_parent().get_node("AnimationPlayer")

func _physics_process(delta):
	var bodies = get_overlapping_bodies()
	for body in bodies:
		if tocou != true and body.name == "Player":
			tocou = true
			anima_map.play("rotate")
			

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


