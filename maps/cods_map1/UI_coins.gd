extends Control

var qtd_coin = 0
onready var label_coins = get_node("Label-coins")

func _ready():
	set_process(true)
	

func set_text_coin():
	qtd_coin = qtd_coin + 1
	label_coins.set_text(str(qtd_coin) + " Esferas" )



