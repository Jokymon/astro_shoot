extends Node2D

@export var UiScene: PackedScene
@export var WorldScene: PackedScene

var ui: MainMenu
var world: World

func _ready():
	ui = UiScene.instantiate()
	ui.start_game.connect(self._on_game_start)
	add_child(ui)

func _process(_delta):
	pass

func _on_game_start():
	world = WorldScene.instantiate()
	add_child(world)
