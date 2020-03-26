extends Spatial

var animate_cam

func _ready():
	animate_cam = get_node("target/AnimationPlayer")
	animate_cam.play("move_cam")

func _process(delta):
	if Input.is_action_pressed("reset") and Input.is_action_pressed("traz") and  Input.is_action_pressed("pulo") and Input.is_action_pressed("Secret_button"):  
		get_tree().change_scene("res://maps/map_2.tscn")

