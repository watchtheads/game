extends Node2D

const speed = 60

var direction = 1

@onready var rcright: RayCast2D = $rcright
@onready var rcleft: RayCast2D = $rcleft
@onready var animated_sprite_2d = $AnimatedSprite2D




# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta) -> void:
	if rcright.is_colliding():
		direction = -1
		animated_sprite_2d.flip_h = true
	if rcleft.is_colliding():
		direction = 1
		animated_sprite_2d.flip_h = false
		
		
	position.x += direction * speed * delta
