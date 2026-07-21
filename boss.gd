extends CharacterBody2D


const SPEED = 300.0


func _physics_process(_delta: float) -> void:
	
	var player_group = get_tree().get_nodes_in_group("player")
	if player_group.size() > 0:
		var player = player_group[0]
		var player_pos = player.global_position
		
			
		var direction = global_position.direction_to(player_pos)
		velocity = direction * SPEED
		

	move_and_slide()
