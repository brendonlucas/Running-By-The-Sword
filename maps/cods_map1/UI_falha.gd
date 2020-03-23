extends Control

var som_buttom
var timer_reset
var active_butom = false
var active_butom_sim = false
var active_butom_nao = false
var escolhido = false

func _ready():
	som_buttom = get_node("buttom_som")
	timer_reset = get_node("Timer")
	
# botão sim
func _on_Buttonnao_pressed():
	if !active_butom and !active_butom_nao: 
		active_butom_sim = true
		active_butom = true
		timer_reset.start()
		som_buttom.play()
	
# botão não
func _on_Buttonsim_pressed():
	if !active_butom and !active_butom_sim:
		active_butom_nao = true
		active_butom = true
		som_buttom.play() 
		timer_reset.start()

func _process(delta):
	if !escolhido and active_butom and active_butom_sim and timer_reset.time_left == 0:
		escolhido = true
		get_tree().reload_current_scene()
		
	elif !escolhido and active_butom and active_butom_nao and timer_reset.time_left == 0:
		escolhido = true
		get_tree().change_scene("res://maps/menu-principal.tscn")
		print("foi menu")
