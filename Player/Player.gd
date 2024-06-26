extends KinematicBody2D

const ACCELERATION = 400
var max_speed = 40
const FRICTION = 400

var poder_manpinguari=load("res://Player/Poder_mapiguari.tscn").instance()
var poder_saci=load("res://Player/Poder_saci.tscn").instance()
var poder_mula=load("res://Player/Poder_mula.tscn").instance()

var direction = 'up'
var lock = false
var animacao = 0
var pos
var dash = Vector2(0,-30)
var dashing = false
var saciCol = false
var Col
var PushCol
var pushCD = 0

var velocity = Vector2.ZERO
var input_vector = Vector2.ZERO
var push_speed = 100

var power_choice = false
var _Mapinguari = false
var Mapinguari = false
var _Saci = false
var Saci = false
var _Mula = false
var Mula = false

var fala
var fala_final
var dialogo1 = false;
var dialogo2 = false;
var dialogo3 = false;
var dialogo4 = false;

var final=false

func falar(var falas):
	lock=true
	if direction=='up':
		$AnimatedSprite.play("IdleUp")
	if direction=='left':
		$AnimatedSprite.play("IdleLeft")
	if direction=='down':
		$AnimatedSprite.play("IdleDown")
	if direction=='right':
		$AnimatedSprite.play("IdleRight")
	var caixa_dialogo=load("res://Player/Controlador_dialogo.tscn").instance()
	caixa_dialogo.get_node("caixa_dialogo").rect_position-=Vector2(157,40)
	caixa_dialogo.texto=falas
	add_child(caixa_dialogo)
	velocity = Vector2.ZERO
	yield(caixa_dialogo,"finished")
	lock=false
	if(fala_final):
		final=true

func _ready():
	$AudioStreamPlayer.play()
	
	if(get_parent().get_parent().name=="Level_3" || get_parent().get_parent().name=="Level_4" || get_parent().get_parent().name=="Level_5" || get_parent().get_parent().name=="Level_6" || get_parent().get_parent().name=="Level_7" || get_parent().get_parent().name=="Level_8"):
		_Mapinguari=true
	if(get_parent().get_parent().name=="Level_5" || get_parent().get_parent().name=="Level_6" || get_parent().get_parent().name=="Level_7" || get_parent().get_parent().name=="Level_8"):
		_Saci=true
	if(get_parent().get_parent().name=="Level_7" || get_parent().get_parent().name=="Level_8"):
		_Mula=true

func _physics_process(delta):
	if(final):
		get_tree().change_scene("res://Menu/Menu.tscn")
	if pushCD > 0:
		pushCD = pushCD - 1
	PushCol = $RayCast2D2.get_collider()
	Col = $RayCast2D.get_collider()
	if Col != null:
		if Col.is_in_group("Saci"):
			saciCol = true
		else:
			saciCol = false
	else:
		saciCol = false
	
	pos = get_global_position()
	if lock == false:
		input_vector.x = Input.get_action_strength("ui_right") - Input.get_action_strength("ui_left")
		input_vector.y = Input.get_action_strength("ui_down") - Input.get_action_strength("ui_up")
		input_vector = input_vector.normalized()
		
		if input_vector != Vector2.ZERO:
			velocity = velocity.move_toward(input_vector * max_speed, ACCELERATION * delta)
		else:
			velocity = velocity.move_toward(Vector2.ZERO, FRICTION * delta)
		velocity = move_and_slide(velocity)
		
		if input_vector.y < 0 || (input_vector.y < 0 && input_vector.x != 0) && dashing == false:
			$AnimatedSprite.play("Up")
			$RayCast2D.rotation_degrees = 0
			$RayCast2D2.rotation_degrees = 0
			direction = 'up'
			dash = Vector2(0,-30)
		if input_vector.y > 0 || (input_vector.y > 0 && input_vector.x != 0) && dashing == false:
			$AnimatedSprite.play("Down")
			$RayCast2D.rotation_degrees = 180
			$RayCast2D2.rotation_degrees = 180
			direction = 'down'
			dash = Vector2(0,30)
		if input_vector.x > 0 && input_vector.y == 0 && dashing == false:
			$AnimatedSprite.play("Right")
			$RayCast2D.rotation_degrees = 90
			$RayCast2D2.rotation_degrees = 90
			direction = 'right'
			dash = Vector2(30,0)
		if input_vector.x < 0 && input_vector.y == 0 && dashing == false:
			$AnimatedSprite.play("Left")
			$RayCast2D.rotation_degrees = 270
			$RayCast2D2.rotation_degrees = 270
			direction = 'left'
			dash = Vector2(-30,0)
	
	if input_vector.x == 0 && input_vector.y == 0 && lock == false && dashing == false:
		if direction == 'up':
			$AnimatedSprite.play("IdleUp")
		if direction == 'down':
			$AnimatedSprite.play("IdleDown")
		if direction == 'right':
			$AnimatedSprite.play("IdleRight")
		if direction == 'left':
			$AnimatedSprite.play("IdleLeft")
	
	if Input.is_action_just_pressed("interact"):
		var collider = $RayCast2D.get_collider()
		if collider != null:
			if not collider.is_in_group("Saci"):
				if collider.is_in_group("Altar"):
					_lock()
					animacao = 1
					$AnimatedSprite.play("Offer")
				collider._on_interact()
				
	if Input.is_action_just_pressed("Reset"):
		if(get_parent().get_parent().name=="Level_0"):
			get_tree().change_scene("res://Levels/Level_0.tscn")
			
		if(get_parent().get_parent().name=="Level_1"):
			get_tree().change_scene("res://Levels/Level_1.tscn")
			
		if(get_parent().get_parent().name=="Level_2"):
			get_tree().change_scene("res://Levels/Level_2.tscn")
			
		if(get_parent().get_parent().name=="Level_3"):
			get_tree().change_scene("res://Levels/Level_3.tscn")
			
		if(get_parent().get_parent().name=="Level_4"):
			get_tree().change_scene("res://Levels/Level_4.tscn")
			
		if(get_parent().get_parent().name=="Level_5"):
			get_tree().change_scene("res://Levels/Level_5.tscn")
			
		if(get_parent().get_parent().name=="Level_6"):
			get_tree().change_scene("res://Levels/Level_6.tscn")
			
		if(get_parent().get_parent().name=="Level_7"):
			get_tree().change_scene("res://Levels/Level_7.tscn")
			
		if(get_parent().get_parent().name=="Level_8"):
			get_tree().change_scene("res://Levels/Level_8.tscn")
	
	if (_Mapinguari):
		if(!power_choice):
			Mapinguari=true
			get_parent().get_parent().get_node("Aba_poder").add_child(poder_manpinguari)
			power_choice=true
			
	if get_slide_count() > 0:
		check_box_collision(input_vector)
	
	if Saci == true && Input.is_action_just_pressed("saci") && lock == false && saciCol == true:
		max_speed = 40
		$Tween.interpolate_property(self, "position", pos, pos + dash, 0.8)
		dashing = true
		animacao = 2
		_lock()
		$Tween.start()
		$AnimatedSprite.play("Dash")
	
	if Mapinguari == true && Input.is_action_just_pressed("Change_power"):
		if(_Saci == true):
			get_parent().get_parent().get_node("Aba_poder").remove_child(poder_manpinguari)
			Saci=true
			Mapinguari=false
			get_parent().get_parent().get_node("Aba_poder").add_child(poder_saci)
	else:
		if Saci == true && Input.is_action_just_pressed("Change_power"):
			if(_Mula == true):
				get_parent().get_parent().get_node("Aba_poder").remove_child(poder_saci)
				Mula=true
				Saci=false
				get_parent().get_parent().get_node("Aba_poder").add_child(poder_mula)
				max_speed = 120
			else:
				get_parent().get_parent().get_node("Aba_poder").remove_child(poder_saci)
				Mapinguari=true
				Saci=false
				get_parent().get_parent().get_node("Aba_poder").add_child(poder_manpinguari)
		else:
			if Mula == true && Input.is_action_just_pressed("Change_power"):
				if(_Mapinguari == true):
					max_speed = 40
					get_parent().get_parent().get_node("Aba_poder").remove_child(poder_mula)
					Mapinguari=true
					Mula=false
					get_parent().get_parent().get_node("Aba_poder").add_child(poder_manpinguari)

func check_box_collision(motion: Vector2):
	if pushCD == 0:
		if PushCol != null:
			if PushCol.is_in_group("Empurrar") || PushCol.is_in_group("Empurrar_pesado"):
				if abs(motion.x) + abs(motion.y) > 1:
					return
				var box = get_slide_collision(0).collider
				if box.is_in_group("Empurrar"):
					box.push(push_speed * motion)
				if box.is_in_group("Empurrar_pesado"):
					if Mapinguari == true:
						box.push(push_speed * motion)
				pushCD = 4

func _lock():
	lock = true
	$AnimatedSprite.playing = false

func _on_Mapinguari_Mapinguari():
	_Mapinguari = true

func _on_Saci_Saci():
	_Saci = true

func _on_Mula_Mula():
	_Mula = true

func _on_AnimatedSprite_animation_finished():
	if animacao == 1:
		lock = false
		animacao = 0
	
	if animacao == 2:
		lock = false
		dashing = false
		animacao = 0

# -- Codigo para controlar as falas do jogador -- #
func _on_Area_dialogo_1_fase_1_body_entered(body):
	if(!dialogo1):
		if(body.name==self.name):
			fala=["Como ninguém sabe onde fica um templo tão grande?", "Bom pelo menos eu estou aqui","Agora só andar com as setinhas do teclado"]
			falar(fala)
			dialogo1 = true

func _on_Area_dialogo_2_fase_1_body_entered(body):
	if(!dialogo2):
		if(body.name==self.name):
			fala=["Como vou fazer pra abrir essa porta?", "Talvez se eu apertar esse botão usando \"E\"..."]
			falar(fala)
			dialogo2 = true

func _on_Area_dialogo_1_fase_2_body_entered(body):
	if(!dialogo1):
		if(body.name==self.name):
			fala=["Há muitos espelhos aqui","Espero que não seja complicado de resolver","Bem se eu precisar posso recomeçar apertando \"Esc\""]
			falar(fala)
			dialogo1=true

func _on_Area_dialogo_2_fase_2_body_entered(body):
	if(!dialogo2):
		if(body.name==self.name):
			fala=["Parece algum tipo de receptor de luz"]
			falar(fala)
			dialogo2=true

func _on_Area_dialogo_3_fase_2_body_entered(body):
	if(!dialogo3):
		if(body.name==self.name):
			fala=["Acho que posso mover esse espelho"]
			falar(fala)
			dialogo3=true

func _on_Area_dialogo_1_fase_3_body_entered(body):
	if(!dialogo1):
		if(body.name==self.name):
			fala=["Essa deve ser a sala do altar que falaram no livro","Só preciso encontrar a oferenda"]
			falar(fala)
			dialogo1=true

func _on_Area_dialogo_2_fase_3_body_exited(body):
	if(!dialogo2):
		if(body.name==self.name && _Mapinguari == true):
			fala=["Me sinto forte!","Acho que posso até mover aqueles blocos."]
			falar(fala)
			get_parent().get_parent().get_node("Aba_poder").add_child(poder_manpinguari)
			Mapinguari = true
			dialogo2=true

func _on_Puzzle_oferenda_1():
	if(!dialogo3):
		fala=["Achei!!!", "Agora só levar até o altar do outro lado","Posso interagir com ele usando a tecla \"E\""]
		falar(fala)
		dialogo3 = true


func _on_Area_dialogo_1_fase_4_body_entered(body):
	if(!dialogo1):
		if(body.name==self.name):
			fala=["Isso tá começando a ficar complicado..."]
			falar(fala)
			dialogo1 = true


func _on_Area_dialogo_1_fase_5_body_entered(body):
	if(!dialogo1):
		if(body.name==self.name):
			fala=["Aquele espelho no meio tá bloqueando a luz","Preciso tirar ele da frente", "Talvez encotrar a oferenda e a levar no altar ajude"]
			falar(fala)
			dialogo1 = true


func _on_Area_dialogo_2_fase_5_body_exited(body):
	if(!dialogo2):
		if(body.name==self.name && _Saci == true):
			fala=["Agora posso atravessar os buracos pequenos","Como esse aqui em cima e o lá de baixo","Bem eu teria que trocar de poder pra isso","Acho que apertar \"C\" deve funcionar","E pra atravessar posso apertar \"Z\""]
			falar(fala)
			dialogo2 = true


func _on_Registro_3_pegouregistro3():
	if(!dialogo4):
		fala=["Calma","Então as oferendas não funcionam?","Não, não pode ser verdade","Preciso continuar tentando"]
		falar(fala)
		dialogo4 = true

func _on_Area_dialogo_1_fase_6_body_entered(body):
	if(!dialogo1):
		if(body.name==self.name):
			fala=["Preciso dar um jeito de ativar os sensores no meio","Talvez eu possa usar esses outros dois espelhos","para refletir a luz ao mesmo tempo no meio"]
			falar(fala)
			dialogo1 = true

func _on_Area_dialogo_1_fase_8_body_entered(body):
	if(!dialogo1):
		if(body.name==self.name):
			fala=["Uou","Eu já achava complicado antes, mas isso...","Acho que preciso ativar as luzes e as plataformas","Aquele botão no canto deve abrir aquela porta","Aí vou poder mexer naquele espelho","Acho que é um bom começo"]
			falar(fala)
			dialogo1 = true

func _on_Area_dialogo_1_fase_9_body_entered(body):
	if(!dialogo1):
		if(body.name==self.name):
			fala=["O que é isso?","A entrada tá bloqueada?"]
			falar(fala)
			dialogo1 = true

func _on_Registro_6_pegouregistro6():
	if(!dialogo2):
		fala_final=true
		fala=["Então é isso?","Tá, de qualquer jeito ele tá certo","Precisamos fazer algo","E eu vou fazer algo","Então vamos lá","......","Bem na verdade o jogo acaba aqui","Obrigado por jogar!","Espero que tenha gostado e até a próxima!"]
		falar(fala)
		dialogo2=true


func _on_Area_dialogo_2_fase_8_body_entered(body):
	if(!dialogo2):
		if(body.name==self.name):
			fala=["Certo, agora preciso tirar esse espelho daqui","Aí vou poder ativar os sensores"]
			falar(fala)
			dialogo2 = true


func _on_Area_dialogo_1_fase_7_body_entered(body):
	if(!dialogo1):
		if(body.name==self.name):
			fala=["O que esse botão faz?"]
			falar(fala)
			dialogo1 = true


func _on_Area_dialogo_2_fase_7_body_exited(body):
	if(!dialogo2):
		if(body.name==self.name && _Mula == true):
			fala=["Me Sinto leve como uma pena!","Se eu trocar de poder vou poder correr muito rápido"]
			falar(fala)
			dialogo2 = true
