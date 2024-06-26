extends Area2D

var saci = false
signal Saci

func _on_interact():
	if saci == true:
		emit_signal("Saci")
		
func _on_Oferenda_saci(body):
	saci = true
