extends Spatial


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var animate

# Called when the node enters the scene tree for the first time.
func _ready():
	animate = get_node("AnimationPlayer")
	#animate.play("beat")



# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
