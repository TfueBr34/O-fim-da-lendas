extends Button


var img_desligado=ResourceLoader.load("res://Puzzle/Lights Out/desligado.png")
var img_ligado=ResourceLoader.load("res://Puzzle/Lights Out/ligado.png")

signal apertado

func change_icon():
	if(icon==img_desligado):
		icon=img_ligado
	else:
		icon=img_desligado

func _pressed():
	change_icon()
	emit_signal("apertado")
	
func _ready():
	randomize()
	if(self.name!="Button5"):
		if (randi() % 2):
			change_icon()
			emit_signal("apertado")

func _on_Button1_apertado():
	change_icon()

func _on_Button2_apertado():
	change_icon()


func _on_Button3_apertado():
	change_icon()


func _on_Button4_apertado():
	change_icon()


func _on_Button5_apertado():
	change_icon()


func _on_Button6_apertado():
	change_icon()


func _on_Button7_apertado():
	change_icon()


func _on_Button8_apertado():
	change_icon()


func _on_Button9_apertado():
	change_icon()


func _on_Button10_apertado():
	change_icon()


func _on_Button11_apertado():
	change_icon()


func _on_Button12_apertado():
	change_icon()


func _on_Button13_apertado():
	change_icon()


func _on_Button14_apertado():
	change_icon()


func _on_Button15_apertado():
	change_icon()


func _on_Button16_apertado():
	change_icon()
