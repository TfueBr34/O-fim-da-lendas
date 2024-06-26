extends Area2D

onready var collision = $StaticBody2D/CollisionDoor
onready var c = $CollisionShape2D
export (String) var next
var AP = 0
var lock = false

func _physics_process(_delta):
	if AP == 0:
		if lock == false:
			$AnimatedSprite.play("0")
	if AP == 1:
		if lock == false:
			$AnimatedSprite.play("1")
	if AP == 2:
		if lock == false:
			abrir_porta()
			lock = true
	var colisor = get_overlapping_bodies()
	for body in colisor:
		if body.name == "Player":
			get_tree().change_scene(next)
			collision.set_global_position(c.get_global_position())

func abrir_porta():
	$AnimatedSprite.play("open")

func _on_Emissor1_Ativar():
	AP = AP + 1

func _on_Receptor1_Desativar():
	AP = AP - 1

func _on_Boto_pesado_abrir():
	AP = AP + 1

func _on_AnimatedSprite_animation_finished():
	collision.disabled = true

func _on_Emissor1_AtivarFinal():
	abrir_porta()
