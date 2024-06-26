extends Area2D

onready var collision = $StaticBody2D/CollisionDoor
onready var c = $CollisionShape2D
export (String) var next

func _physics_process(_delta):
	var colisor = get_overlapping_bodies()
	for body in colisor:
		if body.name == "Player":
			get_tree().change_scene(next)
			collision.set_global_position(c.get_global_position())

func abrir_porta():
	$AnimatedSprite.play("open")

func _on_Botao_Ativo():
	abrir_porta()

func _on_Emissor1_Ativar():
	abrir_porta()

func _on_Boto_pesado_abrir():
	abrir_porta()

func _on_AnimatedSprite_animation_finished():
	collision.disabled = true

func _on_Emissor1_AtivarFinal():
	abrir_porta()
