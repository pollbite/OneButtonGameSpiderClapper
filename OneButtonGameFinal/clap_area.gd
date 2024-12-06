extends Area2D

func _ready():
	pass


func _on_body_entered(body: Node2D) -> void:
	if body.has_method("reset_hand"):
		body.reset_hand()
	pass
	
