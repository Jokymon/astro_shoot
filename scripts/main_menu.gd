extends Control
class_name MainMenu

signal start_game()

func _ready():
	$BackgroundMusic.stream = load("res://assets/sounds/music/SkyFire (Title Screen).ogg")
	@warning_ignore("standalone_expression")
	$BackgroundMusic.play()

func _process(_delta):
	pass

func _on_start_button_pressed():
	start_game.emit()
	hide()

func _on_sound_setting_box_toggled(toggled_on):
	var main_bus_index = AudioServer.get_bus_index("Master")
	AudioServer.set_bus_mute(main_bus_index, not toggled_on)
