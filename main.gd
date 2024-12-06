extends Node2D

var enemy_scene = preload("res://actors/enemies/spider_enemy.tscn")
var butterfly_scene = preload("res://actors/enemies/butterfly_enemy.tscn")
@onready var spawn_point = get_node("SpawnPoint")
@onready var spawn_timer = get_node("EnemySpawnTimer")
@onready var butterfly_spawn_timer = get_node("ButterflySpawnTimer")
var spawn_wait_time = 5
var butterfly_spawn_wait_time = 7

func _on_enemy_spawn_timer_timeout() -> void:
	var enemy = enemy_scene.instantiate()
	enemy.position = spawn_point.global_position
	add_child(enemy)
	spawn_wait_time -= 0.5
	
	if (spawn_wait_time<0.5):
		spawn_wait_time = 0.5
	
	spawn_timer.set_wait_time(spawn_wait_time)


func _on_butterfly_spawn_timer_timeout() -> void:
	var butterfly = butterfly_scene.instantiate()
	butterfly.position = spawn_point.global_position
	add_child(butterfly)
	
	butterfly_spawn_wait_time -= 0.5
	#comment
	if (butterfly_spawn_wait_time < 0.5): 
		butterfly_spawn_wait_time = 0.5
		
	butterfly_spawn_timer.set_wait_time(butterfly_spawn_wait_time)
	
