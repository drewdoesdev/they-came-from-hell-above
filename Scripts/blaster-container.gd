extends Node2D

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	update_blaster_position(position)

func update_blaster_position(position: Vector2) -> void:
	var mouse_pos = get_global_mouse_position()
	var direction = mouse_pos - get_parent().global_position
	var angle = direction.angle()
	
	# Subtract 90 degrees to align with mouse
	angle += PI/2
	
	# Normalize angle to prevent wrapping issues
	while angle > PI:
		angle -= 2 * PI
	while angle < -PI:
		angle += 2 * PI
	
	# Limit rotation to 180 degrees (-90 to +90 degrees)
	angle = clamp(angle, -PI/2, PI/2)
	
	# Use regular lerp instead of lerp_angle to prevent wrapping
	rotation = lerp(rotation, angle, 0.2)