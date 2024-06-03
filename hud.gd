extends CanvasLayer

var tempo = 0 # o começo do tempo 

func _ready():
	pass
	

func _on_Timer_timeout(): # conectado com o timer
	tempo += 1 # tempo mais os segundos 
	$Label.text = str(tempo) # convertendo o Label para numerica
