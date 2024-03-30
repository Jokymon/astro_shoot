extends Node2D
class_name World

signal quit()

func _ready():
	Input.warp_mouse($SpaceShip.position)

func _input(_event):
	if Input.is_key_pressed(KEY_ESCAPE):
		quit.emit()
