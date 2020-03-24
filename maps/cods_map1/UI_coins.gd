extends Control

var qtd_coin = 0
onready var label_coins = get_node("Label-coins")
var pontuacao

func _ready():
	pontuacao = get_parent().get_node("UI_pontuacao")
	#set_process(true)
	

func set_text_coin():
	qtd_coin = qtd_coin + 1
	pontuacao.set_coin()
	label_coins.set_text(str(qtd_coin) + " Esferas")

func get_total_coins():
	return qtd_coin

