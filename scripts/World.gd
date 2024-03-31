extends Node2D
class_name World

@export var alien_scene: PackedScene

signal quit()

func _ready():
	Input.warp_mouse($SpaceShip.position)
	$SpawnTimer.start()

func _input(_event):
	if Input.is_key_pressed(KEY_ESCAPE):
		quit.emit()

func _on_spawn_timer_timeout():
	var alien = alien_scene.instantiate()
	alien.position = $AlienSpawn.position
	add_child(alien)
