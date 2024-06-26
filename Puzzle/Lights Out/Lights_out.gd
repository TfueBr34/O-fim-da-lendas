extends Control

var img_desligado=ResourceLoader.load("res://Puzzle/Lights Out/desligado.png")
var destrancado

signal destrancado

func _process(_delta):
	destrancado=true
	for botao in $Painel.get_children():
		if(botao.icon==img_desligado):
			destrancado=false
	if(destrancado):
		emit_signal("destrancado")

