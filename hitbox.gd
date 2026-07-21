extends Area2D

func _ready() -> void:
	body_entered.connect(_on_body)
	
func _on_body(body:Node2D) -> void:
	if body.is_in_group("player"):
		if body.has_method("take_damge"):
			body.take_damge(20)
			
