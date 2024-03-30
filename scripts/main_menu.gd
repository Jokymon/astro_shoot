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

func _on_sound_setting_box_toggled(toggled_on):
	var main_bus_index = AudioServer.get_bus_index("Master")
	print_debug("Setting audio bus to "+str(toggled_on))
	AudioServer.set_bus_mute(main_bus_index, not toggled_on)
