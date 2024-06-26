extends Area2D

signal mula

func _on_OferendaMula_body_entered(body):
	if body.is_in_group("Player"):
		emit_signal("mula")
		get_parent().get_parent().get_node("Puzzle").visible=true
		get_parent().get_node("Player").lock=true
		queue_free()
