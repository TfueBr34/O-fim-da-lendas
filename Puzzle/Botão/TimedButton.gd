extends StaticBody2D

signal Ativar
signal Desativar
export (int) var time
var Mt

func _ready():
	$ProgressBar.visible = false
	Mt = time
	$ProgressBar.max_value = Mt

func _on_interact():
	time = Mt
	$ProgressBar.value = time
	$AnimatedSprite.set_frame(1)
	$ProgressBar.visible = true
	emit_signal("Ativar")
	$Timer.start()

func _on_Timer_timeout():
	time = time - 1
	$ProgressBar.value = time
	if time == 0:
		emit_signal("Desativar")
		$Timer.stop()
		$ProgressBar.visible = false
		$AnimatedSprite.set_frame(0)
