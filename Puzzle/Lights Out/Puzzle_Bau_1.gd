extends Node2D

signal oferenda_1

func _on_Lights_Out_destrancado():
	visible=false
	get_parent().get_node("YSort").get_node("Player").lock=false
	emit_signal("oferenda_1")
	queue_free()



