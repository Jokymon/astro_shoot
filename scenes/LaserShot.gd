extends Area2D

var speed = 750

func _physics_process(delta):
	position += transform.y * speed * delta

func _process(delta):
	pass

func _on_visible_on_screen_notifier_2d_screen_exited():
	queue_free()
