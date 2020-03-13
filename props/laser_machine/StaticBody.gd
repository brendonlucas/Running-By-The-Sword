extends Area

var tocou
var player


func _physics_process(delta):
	var bodies = get_overlapping_bodies()
	for body in bodies:
		if tocou != true and body.name == "Player":
			print("tocou morreu")
			

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


