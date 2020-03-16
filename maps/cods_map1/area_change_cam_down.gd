extends Area

var camera
var player
var tocou
var pista

func _ready():
	camera = get_parent().get_parent().get_node("AnimationPlayer")
	player = get_parent().get_parent().get_node("player/Player")
	pista = get_parent().get_parent().get_node("base_map_1")
	
func _physics_process(delta):
	var bodies = get_overlapping_bodies()
	for body in bodies:
		if body.name == "Player" and tocou != true:
			tocou = true
			camera.play("down_cam")
			pista.chage_move(2)
			player.block_moves_cam_down(true)
			
			
			#var c1 = Color("#ffb2d90a")
			#espiral.material_override.albedo_color = new_color
			#print(espiral.name)
			


