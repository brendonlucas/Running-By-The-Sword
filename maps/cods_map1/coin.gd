extends Area

var coin_audio
var tocou
var label_coins

func _ready():
	coin_audio = get_parent().get_node("coin_audio")
	label_coins = get_parent().get_parent().get_parent().get_node("UI_coins")
	
func _physics_process(delta):
	var bodies = get_overlapping_bodies()
	for body in bodies:
		if body.name == "Player" and tocou != true:
			#coin_audio.play()
			label_coins.set_text_coin()
			hide()
			tocou = true



