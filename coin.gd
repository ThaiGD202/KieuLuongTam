extends Area2D

@onready var anim_coin = $AnimatedSprite2D

func _ready() -> void:
	position = Vector2(500,300)
	anim_coin.play("Idle")
	body_entered.connect(_on_body)
func _on_body(body: Node2D):
	if body.is_in_group("player"):
		if body.has_method("add_coin"):
			body.add_coin(1)
		print("lụm")
		queue_free()
