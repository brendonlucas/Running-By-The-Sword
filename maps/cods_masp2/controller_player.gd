extends Spatial

var sonds

func _ready():
	sonds = get_node("Player/target/music")

func _process(delta):
	if Input.is_action_pressed("reset"):
		sonds.stop()
		get_tree().reload_current_scene()
