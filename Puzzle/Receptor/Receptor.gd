extends StaticBody2D

signal Desativar
signal AtivarFinal
var x = 0

func _on_Ativador_area_entered(area):
	if area.name == "Ativador":
		$AnimatedSprite.set_frame(1)

func _on_Ativador_area_exited(area):
	if area.name == "Ativador":
		$AnimatedSprite.set_frame(0)
		emit_signal("Desativar")
