extends Area

var camera
var player
var tocou

func _ready():
	camera = get_parent().get_parent().get_node("AnimationPlayer")
	player = get_parent().get_parent().get_node("player/Player")
	#espiral = get_parent().get_node("scene/RootNode gltf orientation matrix/RootNode model correction matrix/7566263088d9468a832f5d8065be69cbfbx/Node/RootNode/Group001/Helix003/Helix003_08 - Default_0")
	
func _physics_process(delta):
	var bodies = get_overlapping_bodies()
	for body in bodies:
		if body.name == "Player" and tocou != true:
			tocou = true
			camera.play("rotate_1")
			player.invert_controls(2)
			
			#var c1 = Color("#ffb2d90a")
			#espiral.material_override.albedo_color = new_color
			#print(espiral.name)
			


