extends Area2D

@export var is_moving : bool = true

func _ready():
	pass # Replace with function body.

func _process(_delta):
	pass

func _on_area_entered(_area):
	"""Alien was hit by a projectile and will explode now"""
	self.is_moving = false
	self.set_deferred("monitoring", false)
	AudioPlayerPool.play("res://assets/sounds/effects/alien_small_explosion.wav")
	$ExplosionAnimation.play("explode")
	$ShipSprite.visible = false

func _on_explosion_animation_animation_finished():
	queue_free()
