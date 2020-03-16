extends Area

var tocou

func _ready():
	pass
	
func _physics_process(delta):
	var bodies = get_overlapping_bodies()
	for body in bodies:
		if body.name == "Player" and tocou != true:
			tocou = true
			print("tocou emorreu")
			
			#var c1 = Color("#ffb2d90a")
			#espiral.material_override.albedo_color = new_color
			#print(espiral.name)
			


