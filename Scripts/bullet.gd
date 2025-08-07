extends Area2D

var speed: int = 300
var direction: Vector2 = Vector2(1, 0);


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	position.x += speed * direction * delta;
