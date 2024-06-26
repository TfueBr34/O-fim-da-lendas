extends Area2D

var mula = false
signal Mula

func _on_interact():
	if mula == true:
		emit_signal("Mula")

func _on_Oferenda_mula():
	mula = true
