extends Area2D

func _ready():
	pass


func _on_body_entered(body: Node2D) -> void:
	if body.has_method("leave_bounds"):
		body.leave_bounds()
	pass # Replace with function body.
