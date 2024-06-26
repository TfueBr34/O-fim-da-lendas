extends StaticBody2D

onready var ray = $RayCast2D
onready var line = $Line2D
onready var ativ = $Ativador/Ativador

var max_bounces = 10

signal AtivarFinal
signal Ativar
var area

func _process(_delta):
	line.clear_points()
	line.add_point(Vector2.ZERO)
	ray.global_position = line.global_position
	ray.cast_to = Vector2(0,-400)
	ray.force_raycast_update()
	
	var prev = null
	var bounces = 0
	
	while true:
		if not ray.is_colliding():
			var pt = ray.global_position + ray.cast_to
			line.add_point(line.to_local(pt))
			ativ.global_position = pt
			break
		
		var coll = ray.get_collider()
		var pt = ray.get_collision_point()
		
		line.add_point(line.to_local(pt))
		ativ.global_position = pt
		
		if not coll.is_in_group("Espelhos"):
			break
		
		var normal = ray.get_collision_normal()
		
		if normal == Vector2.ZERO:
			break
		
		if prev != null:
			prev.collision_mask = 4
			prev.collision_layer = 4
		prev = coll
		prev.collision_mask = 0
		prev.collision_layer = 0
		
		ray.global_position = pt
		ray.cast_to = ray.cast_to.bounce(normal)
		ray.force_raycast_update()
		
		bounces += 1
		if bounces >= max_bounces:
			break
	if prev != null:
		prev.collision_mask = 4
		prev.collision_layer = 4

func _on_Ativador_area_entered(_area):
	area = _area.get_parent()
	if area.is_in_group("Final"):
		emit_signal("AtivarFinal")
	else:
		emit_signal("Ativar")
