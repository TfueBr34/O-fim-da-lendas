extends Area2D

signal mapinguari

func _on_Oferenda_mapinguari(body):
	if body.is_in_group("Player"):
		emit_signal("mapinguari")
		get_parent().get_parent().get_node("Puzzle").visible=true
		get_parent().get_node("Player").lock=true
		queue_free()
