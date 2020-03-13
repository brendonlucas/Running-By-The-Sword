extends Spatial


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var sonds
#var new_rotation = -16.653
var player

# Called when the node enters the scene tree for the first time.
func _ready():
	sonds = get_node("Player/target/music")
	player = get_node(".")
	pass # Replace with function body.


	
func _process(delta):
	if Input.is_action_pressed("reset"):
		sonds.stop()
		get_tree().reload_current_scene()
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
