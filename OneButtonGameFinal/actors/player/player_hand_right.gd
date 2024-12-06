extends CharacterBody2D

@onready var meeting_point = get_parent().get_node("MeetingPoint")

var target_position: Vector2
var original_position: Vector2
var speed: float = 300.0
var direction = Vector2.LEFT
var is_moving = false
var has_clapped = false

func _ready():
	target_position = meeting_point.global_position
	original_position = global_position
	var clap_area = get_parent().get_node("ClapArea")

		
func _physics_process(delta):
	if Input.is_action_just_pressed("space_press"): 
		is_moving = true
		has_clapped == false
		print("press")
	
	if is_moving == true: 
		var movement_direction = (target_position - global_position).normalized()
		velocity = direction * speed
		
		move_and_slide()
	else: 
		velocity = Vector2.ZERO
		
	if has_clapped == true: 
		global_position = original_position
	
func reset_hand():
	print("entered")
	if not has_clapped:
		is_moving = false
		has_clapped = true
		velocity = Vector2.ZERO
		print("clap check")
