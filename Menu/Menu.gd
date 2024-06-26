extends Node2D

const start = preload("res://História/Historia_mundo.tscn")

var selected = 1

func _ready():
	$AudioStreamPlayer.play()
	set_selection(1)

func _process(delta):
	if Input.is_action_just_pressed("ui_up"):
		selected = 1
		set_selection(selected)
	elif Input.is_action_just_pressed("ui_down"):
		selected = 2
		set_selection(selected)
	elif Input.is_action_just_pressed("ui_accept"):
		select(selected)
		

func set_selection(selected):
	if selected == 1:
		$Fundo/FundoMenu/Op2.set_frame(0)
		$Fundo/FundoMenu/Op1.set_frame(1)
	if selected == 2:
		$Fundo/FundoMenu/Op1.set_frame(0)
		$Fundo/FundoMenu/Op2.set_frame(1)

func select(selected):
	if selected == 1:
		get_parent().add_child(start.instance())
		queue_free()
	elif selected == 2:
		get_tree().quit()
