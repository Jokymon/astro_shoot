extends Area2D

var speed = 750

func _physics_process(delta):
	position += transform.y * speed * delta

func _process(delta):
	pass
