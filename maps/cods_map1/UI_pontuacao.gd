extends Control

var label_pontuacao
var total_coins = 0
var gold_esfera
var silver_esfera
var bronze_esfera

func _ready():
	label_pontuacao = get_node("CenterContainer/coins_total_label")
	
func show_pontuacao():
	show()
	label_pontuacao.set_text(str(total_coins) + " Esferas coletadas")
	if total_coins >= 50:
		gold_esfera = get_node("CenterContainer/Sprite-golden")
		gold_esfera.show()
	elif 30 <= total_coins < 50 :
		silver_esfera = get_node("CenterContainer/Sprite-silver")
		silver_esfera.show()
	elif total_coins < 30:
		bronze_esfera = get_node("CenterContainer/Sprite-bronze")
		bronze_esfera.show()
		
func set_coin():
	total_coins += 1
