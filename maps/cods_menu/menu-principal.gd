extends Spatial


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

var animate_cam
# Called when the node enters the scene tree for the first time.
func _ready():
	animate_cam = get_node("target/AnimationPlayer")
	animate_cam.play("move_cam")

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
