extends Node2D


func _on_Lights_Out_destrancado():
	visible=false
	get_parent().get_node("YSort").get_node("Player").lock=false
	queue_free()
