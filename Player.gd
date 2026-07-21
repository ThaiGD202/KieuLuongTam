extends CharacterBody2D

const SPEED = 700.0
@export var health = 200.0

func _ready() -> void:
	position = Vector2(200,300)
	health = 200.0

func take_damge(amount:float) -> void:
	health -= amount
	print("Health:",health)
	if health <= 0:
		die()
		
func die() -> void:
	print("Are you Die")
	get_tree().reload_current_scene()

func _physics_process(_delta: float) -> void:
	var huong_dichuyen = Input.get_vector("A","D","W","S")
	huong_dichuyen = huong_dichuyen.normalized()
	
	velocity = huong_dichuyen * SPEED
	move_and_slide()
