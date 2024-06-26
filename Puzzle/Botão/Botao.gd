extends StaticBody2D

signal Ativo

func _on_interact():
	emit_signal("Ativo")
