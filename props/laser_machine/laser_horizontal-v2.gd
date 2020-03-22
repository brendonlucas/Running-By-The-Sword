extends Area

var tocou
var player

func _ready():
	pass
	
func _physics_process(delta):
	var bodies = get_overlapping_bodies()
	for body in bodies:
		if body.name == "Player" and tocou != true:
			print("tomou laser")
			tocou = true



