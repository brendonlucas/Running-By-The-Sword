extends Spatial

var button_menu
func _ready():
	button_menu = get_node("Control/menu")


func _on_VideoPlayer_finished():
	button_menu.show()


func _on_menu_pressed():
		get_tree().change_scene("res://maps/menu-principal.tscn")
