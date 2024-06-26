extends StaticBody2D

var animacao = 0
onready var g = $CollisionShape2D.get_global_position()

func abrir_porta():
	animacao = 1
	$AnimatedSprite.play("open")
	
func fechar_porta():
	animacao = 0
	$AnimatedSprite.play("close")
	$CollisionShape2D.set_global_position(g)

func _on_Botao_Ativo():
	abrir_porta()
	
func _on_Emissor1_Ativar():
	abrir_porta()
	
func _on_Receptor1_Desativar():
	fechar_porta()
	
func _on_Boto_pesado_abrir():
	abrir_porta()
	
func _on_TimedButton_Ativar():
	abrir_porta()

func _on_TimedButton_Desativar():
	fechar_porta()

func _on_AnimatedSprite_animation_finished():
	if animacao == 1:
		$CollisionShape2D.set_global_position(g*100)
