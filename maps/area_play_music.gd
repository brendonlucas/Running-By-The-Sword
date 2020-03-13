extends Area

var songs
var player
var espiral


func _ready():
	songs = get_parent().get_parent().get_node("player/Player/target/music")
	player = get_parent().get_parent().get_node("player")
	#espiral = get_parent().get_node("scene/RootNode gltf orientation matrix/RootNode model correction matrix/7566263088d9468a832f5d8065be69cbfbx/Node/RootNode/Group001/Helix003/Helix003_08 - Default_0")
	
func _physics_process(delta):
	var bodies = get_overlapping_bodies()
	for body in bodies:
		if body.name == "Player":
			songs.play()



