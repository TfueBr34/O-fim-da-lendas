extends Area2D

var oferenda_mapinguari = false
signal Mapinguari

func _on_interact():
	if oferenda_mapinguari == true:
		emit_signal("Mapinguari")

func _on_Oferenda_body_entered(body):
	oferenda_mapinguari = true
