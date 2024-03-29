extends Node2D

@export var projectile : PackedScene
var screensize

func _ready():
	screensize = get_viewport_rect().size

func _process(_delta):
	global_position = get_global_mouse_position()
	position.x = clamp(position.x, 0, screensize.x)
	position.y = clamp(position.y, 0, screensize.y)

func _on_firing_timer_timeout():
	var proj_right = projectile.instantiate()
	proj_right.transform = $MuzzleRight.global_transform
	proj_right.rotation = $MuzzleRight.rotation
	owner.add_child(proj_right)
	$AudioPlayer.stream = load("res://assets/sounds/effects/laserShoot.wav")
	$AudioPlayer.play()

	var proj_left = projectile.instantiate()
	proj_left.transform = $MuzzleLeft.global_transform
	proj_left.rotation = $MuzzleLeft.rotation
	owner.add_child(proj_left)
