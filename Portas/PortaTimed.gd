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
	$AnimatedSprite.play("1open")
	collision.disabled = true

func fechar_porta():
	$AnimatedSprite.play("2close")
	collision.disabled = false

func _on_TimedButton_Ativar():
	abrir_porta()

func _on_TimedButton_Desativar():
	fechar_porta()
