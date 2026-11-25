extends Node2D

const speed = 60

var direction = 1

@onready var rcright: RayCast2D = $rcright
@onready var rcleft: RayCast2D = $rcleft



# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta) -> void:
	if rcright.is_colliding():
		direction = -1
	if rcleft.is_colliding():
		direction = 1
		
		
	position.x += direction * speed * delta
