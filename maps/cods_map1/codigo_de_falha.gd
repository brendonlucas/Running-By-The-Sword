extends Area

var tocou

func _ready():
	pass
	
func _physics_process(delta):
	var bodies = get_overlapping_bodies()
	for body in bodies:
		if body.name == "Player" and tocou != true:
			print("morreu")
			tocou = true



