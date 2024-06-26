extends Control

var hist_jorge=["\n\n\n\n\n\n\nVocê irá controlar Jorge, filho de um grande empresário e que sempre viveu uma boa vida com tudo o que ele quissese, sendo treinado para assumir o lugar do seu pai quando ele se aposentasse. A vida de Jorge mudou quando ele viu o quanto a empresa de seu pai destruía o meio-ambiente, fazendo o jovem, agora com 16 anos, ficar espantado. Ele tentou conversar com seu pai e convencê-lo a tratar melhor a natureza, mas ele não o escutava. Foi então que ele ouviu histórias sobre um templo que poderia ajudar o meio ambiente a se recuperar. Sem pensar duas vezes Jorge seguiu as histórias e encontrou o lugar do templo."]
var finished=false

func _process(delta):
	escreverhistjorge()
	if Input.is_action_just_pressed("ui_accept"):
		get_tree().change_scene("res://Levels/Level_0.tscn")
		queue_free()

func escreverhistjorge():
	if(!finished):
		$Texto.bbcode_text=hist_jorge[0]
		finished =true
