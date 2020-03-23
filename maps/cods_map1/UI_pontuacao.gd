extends Control

var label_pontuacao
var total_coins

func _ready():
	label_pontuacao = get_node("coins_total_label")
	total_coins = get_parent().get_node("UI_coins").get_total_coins()
	
func show_pontuacao():
	show()
	label_pontuacao.set_text(str(total_coins) + " Esferas coletadas")
	

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
