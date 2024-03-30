extends Node

const SETTINGS_FILE_PATH: String = "user://settings.cfg"
var config: ConfigFile

var _audio_enabled_setting: bool = false
var audio_enabled: bool:
	set(value):
		var main_bus_index = AudioServer.get_bus_index("Master")
		AudioServer.set_bus_mute(main_bus_index, not value)
		
		_audio_enabled_setting = value
		config.set_value("sound", "enabled", value)
		save_settings()
	get:
		return _audio_enabled_setting

func load_settings():
	config = ConfigFile.new()
	var err = config.load(SETTINGS_FILE_PATH)
	if err == ERR_FILE_NOT_FOUND:
		config.set_value("sound", "enabled", true)
		save_settings()
		
	audio_enabled = config.get_value("sound", "enabled", true)

func save_settings():
	config.save(SETTINGS_FILE_PATH)

func _ready():
	load_settings()
