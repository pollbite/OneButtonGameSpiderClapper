extends CharacterBody2D

var speed: float = 100.0
var direction = Vector2.DOWN
var starting_position: Vector2
var animation_player : AnimationPlayer

func _physics_process(delta): 
	velocity = direction * speed
	move_and_slide()
	
	animation_player = get_node("AnimationPlayer")
	animation_player.play("fly")

func leave_bounds(): 
	queue_free()
