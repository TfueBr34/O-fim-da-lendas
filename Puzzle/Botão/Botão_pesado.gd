extends Area2D

signal abrir

func _on_Boto_pesado_body_entered(body):
	if body.is_in_group("Empurrar_pesado"):
		$AnimatedSprite.set_frame(1)
		emit_signal("abrir")
