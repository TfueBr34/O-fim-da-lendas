extends Area2D

var pagina=load("res://World/Controlador_Registros.tscn").instance()
var finalizado=false

var pegoumapinguari=false
signal pegoumapinguari
var pegouregistro2=false
signal pegouregistro2
var pegouregistro3=false
signal pegouregistro3
signal pegouregistro6

func _process(_delta):
	if(finalizado):
		queue_free()
		
func _on_Registro_1_body_entered(body):
	if body.is_in_group("Player"):
		get_parent().get_node("Player").lock=true
		pagina.get_node("Background").rect_position-=Vector2(145,120)
		pagina.set_regis(1)
		add_child(pagina)

func _on_Registro_2_body_entered(body):
	if body.is_in_group("Player"):
		emit_signal("pegouregistro2")
		if(!pegoumapinguari):
			get_parent().get_node("Registro_Mapinguari").set_z_index(get_z_index()-1)
		if(!pegouregistro3):
			get_parent().get_node("Registro_3").set_z_index(get_z_index()-1)
		get_parent().get_node("Player").lock=true
		pagina.get_node("Background").rect_position-=Vector2(274,123)
		pagina.set_regis(2)
		add_child(pagina)
		emit_signal("registro2")


func _on_Registro_3_body_entered(body):
	if body.is_in_group("Player"):
		if(!pegoumapinguari):
			get_parent().get_node("Registro_Mapinguari").set_z_index(get_z_index()-1)
		if(!pegouregistro2):
			get_parent().get_node("Registro_2").set_z_index(get_z_index()-1)
		get_parent().get_node("Player").lock=true
		pagina.get_node("Background").rect_position-=Vector2(159,104)
		pagina.set_regis(3)
		add_child(pagina)
		yield(pagina,"finished")
		emit_signal("pegouregistro3")


func _on_Registro_Mapinguari_body_entered(body):
	if body.is_in_group("Player"):
		emit_signal("pegoumapinguari")
		if(!pegouregistro2):
			get_parent().get_node("Registro_2").set_z_index(get_z_index()-1)
		if(!pegouregistro3):
			get_parent().get_node("Registro_3").set_z_index(get_z_index()-1)
		get_parent().get_node("Player").lock=true
		pagina.get_node("Background").rect_position-=Vector2(62,96)
		pagina.set_regis(7)
		add_child(pagina)


func _on_Registro_Mapinguari_pegoumapinguari():
	pegoumapinguari=true


func _on_Registro_2_pegouregistro2():
	pegouregistro2=true


func _on_Registro_3_pegouregistro3():
	pegouregistro3=true


func _on_Registro_4_body_entered(body):
	if body.is_in_group("Player"):
		get_parent().get_node("Player").lock=true
		pagina.get_node("Background").rect_position-=Vector2(127,103)
		pagina.set_regis(4)
		add_child(pagina)


func _on_Registro_Saci_body_entered(body):
	if body.is_in_group("Player"):
		get_parent().get_node("Player").lock=true
		pagina.get_node("Background").rect_position-=Vector2(217,52)
		pagina.set_regis(8)
		add_child(pagina)


func _on_Registro_5_body_entered(body):
	if body.is_in_group("Player"):
		get_parent().get_node("Player").lock=true
		pagina.get_node("Background").rect_position-=Vector2(97,137)
		pagina.set_regis(5)
		add_child(pagina)


func _on_Registro_Mula_body_entered(body):
	if body.is_in_group("Player"):
		get_parent().get_node("Player").lock=true
		pagina.get_node("Background").rect_position-=Vector2(32,128)
		pagina.set_regis(9)
		add_child(pagina)


func _on_Registro_6_body_entered(body):
	if body.is_in_group("Player"):
		get_parent().get_node("Player").lock=true
		pagina.get_node("Background").rect_position-=Vector2(161,93)
		pagina.set_regis(6)
		add_child(pagina)
		yield(pagina,"finished")
		emit_signal("pegouregistro6")
