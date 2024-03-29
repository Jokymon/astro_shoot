extends Control
class_name MainMenu

signal start_game()

func _ready():
	pass # Replace with function body.

func _process(_delta):
	pass

func _on_start_button_pressed():
	start_game.emit()
	hide()
