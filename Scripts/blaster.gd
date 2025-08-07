extends AnimatedSprite2D

@onready var bullet = preload("res://Scenes/bullet.tscn");

var shootPoint: Transform2D = Transform2D(0, Vector2(0, 0))

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
