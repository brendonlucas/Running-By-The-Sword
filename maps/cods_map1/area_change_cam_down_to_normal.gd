extends Area

var camera
var player
var tocou
var pista

func _ready():
	camera = get_parent().get_parent().get_node("AnimationPlayer")
	player = get_parent().get_parent().get_node("player/Player")
	pista = get_parent().get_parent().get_node("base_map_1")
	#espiral = get_parent().get_node("scene/RootNode gltf orientation matrix/RootNode model correction matrix/7566263088d9468a832f5d8065be69cbfbx/Node/RootNode/Group001/Helix003/Helix003_08 - Default_0")
	
func _physics_process(delta):
	var bodies = get_overlapping_bodies()
	for body in bodies:
		if body.name == "Player" and tocou != true:
			tocou = true
			camera.play("reset_cam_down")
			pista.chage_move(1)
			player.block_moves_cam_down(false)
			
			#var c1 = Color("#ffb2d90a")
			#espiral.material_override.albedo_color = new_color
			#print(espiral.name)
			


