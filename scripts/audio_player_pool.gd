extends Node

var num_players = 8
var bus = "sound_effects"

var available = []  # The available players.
var queue = []  # The queue of sounds to play.

func _ready():
	# Create the pool of AudioStreamPlayer nodes.
	for i in num_players:
		var p = AudioStreamPlayer.new()
		add_child(p)
		available.append(p)
		p.finished.connect(Callable(self._on_stream_finished).bind(p))
		p.bus = bus

func _on_stream_finished(stream_player):
	# When finished playing a stream, make the player available again.
	available.append(stream_player)

func play(sound_path):
	queue.append(sound_path)

func _process(_delta):
	# Play a queued sound if any players are available.
	if not queue.is_empty() and not available.is_empty():
		available[0].stream = load(queue.pop_front())
		available[0].play()
		available.pop_front()
