extends Area2D

signal Saci

func _on_Area2D_body_entered(body):
	if body.is_in_group("Player"):
		emit_signal("Saci")
		get_parent().get_parent().get_node("Puzzle").visible=true
		get_parent().get_node("Player").lock=true
		queue_free()
