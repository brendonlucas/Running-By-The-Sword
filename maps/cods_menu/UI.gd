extends Control

var active = false
onready var time = get_node("Timer") 
var sond
var trocou = false

func _ready():
	sond = get_node("effect")
		
func _process(delta):
	if !trocou and active and time.time_left == 0:
		#get_tree().change_scene("res://maps/map_1.tscn")
		trocou = true
		get_tree().change_scene("res://maps/history_video.tscn")

		
func _on_Button_pressed():
	time.start()
	sond.play()
	active = true
