extends VideoPlayer

func _ready():
	pass

func _on_VideoPlayerhistoria_finished():
	get_tree().change_scene("res://maps/map_1.tscn")

func _on_skip_pressed():
	get_tree().change_scene("res://maps/map_1.tscn")
