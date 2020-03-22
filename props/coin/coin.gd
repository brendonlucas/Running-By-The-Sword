extends Area

var music
var tocou
var cam_animate
var coin_effect
var ui_coins

func _ready():
	music = get_parent().get_parent().get_parent().get_node("player/Player/target/music")
	cam_animate= get_parent().get_parent().get_parent().get_node("player/Player/target/AnimationPlayer")
	coin_effect = get_parent().get_node("coin_effect")
	ui_coins = get_parent().get_parent().get_parent().get_node("ui_coins")
	
func _physics_process(delta):
	var bodies = get_overlapping_bodies()
	for body in bodies:
		if body.name == "Player" and tocou != true:
			print("pegou uma coin")
			ui_coins.set_label_coins()
			coin_effect.play()
			hide()
			tocou = true



