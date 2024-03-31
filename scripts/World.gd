extends Node2D
class_name World

@export var alien_scene: PackedScene

var alien: Node2D

signal quit()

func _ready():
	Input.warp_mouse($SpaceShip.position)
	$SpawnTimer.start()

func _input(_event):
	if Input.is_key_pressed(KEY_ESCAPE):
		quit.emit()
		
func _process(_delta):
	if alien != null and alien.is_moving:
		$AlienPath/AlienPathFollow.progress_ratio += 0.005
		alien.position = %AlienSpawnPoint.global_position

func _on_spawn_timer_timeout():
	alien = alien_scene.instantiate()
	alien.position = %AlienSpawnPoint.position
	add_child(alien)
