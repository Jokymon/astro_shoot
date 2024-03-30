extends Control
class_name MainMenu

signal start_game()

func _ready():
	%SoundSettingBox.set_pressed_no_signal(Settings.audio_enabled)

	$BackgroundMusic.stream = load("res://assets/sounds/music/SkyFire (Title Screen).ogg")
	$BackgroundMusic.play()

func _process(_delta):
	pass

func _on_start_button_pressed():
	start_game.emit()
	hide()

func _on_sound_setting_box_toggled(toggled_on):
	Settings.audio_enabled = toggled_on
	#Settings.save_settings()
