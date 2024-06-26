extends Control

var hist_mundo=["No começo dos tempos, toda a humanidade estava extremamente ligada a natureza e aos outros animais, assim como aos representantes de ambos. Entretanto, com o passar do tempo os humanos passaram a se concentrar em cidades, destruindo a natureza em seu entorno e se afastando dela. Com o tempo, a ligação que antes existia começou a desaparecer pouco a pouco e os representantes perderam o poder que tinham antes, até que seus nomes se tornaram apenas vagas lembranças para todos, apenas lendas.\n\nQuando isso aconteceu, alguns poucos humanos tentaram ajudar a natureza e criaram um templo para realizar oferendas aos representantes que  haviam desaparecido, na esperança de conseguir trazê-los de volta. Entretanto, mesmo os seus esforços não foram suficientes para atingir esse objetivo e com o passar do tempo o templo foi abandonado. Isso muda quando um jovem adentra as portas novamente, visando terminar o que aqueles antes dele não conseguiram."]
var finished=false

func _process(delta):
	escreverhistmundo()
	if Input.is_action_just_pressed("ui_accept"):
		get_tree().change_scene("res://História/Historia_jorge.tscn")
		queue_free()

func escreverhistmundo():
	if(!finished):
		$Texto.bbcode_text=hist_mundo[0]
		finished =true
