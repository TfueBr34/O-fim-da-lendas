extends Control

export(Array) var texto

var index=0
var finished
signal finished
export(bool) var active
var vel_fala= 0.065

func _ready():
	salvarfalas()

func _physics_process(_delta):
	if active:
		if Input.is_action_just_pressed("ui_accept"):
			if finished:
				salvarfalas()
			else:
				index+=1
				$caixa_dialogo/Tween.stop_all()
				$caixa_dialogo/texto.percent_visible=1
				finished=true
				
func salvarfalas():
	if index<texto.size():
		active = true
		finished=false
		$caixa_dialogo.visible=true
		$caixa_dialogo/texto.bbcode_text=texto[index]
		$caixa_dialogo/texto.percent_visible=0
		var duracao = vel_fala * texto[index].length()
		$caixa_dialogo/Tween.interpolate_property(
			$caixa_dialogo/texto, "percent_visible",0,1, duracao
		)
		$caixa_dialogo/Tween.start()
		yield($caixa_dialogo/Tween,"tween_completed")
	else:
		active = false
		finished=true
		$caixa_dialogo.visible=false
		emit_signal("finished")
		

func _on_Tween_tween_completed(_object, _key):
	finished=true
	index+=1
