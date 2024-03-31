extends Area2D

func _ready():
	pass # Replace with function body.

func _process(_delta):
	pass

func _on_area_entered(_area):
	AudioPlayerPool.play("res://assets/sounds/effects/alien_small_explosion.wav")
	queue_free()
