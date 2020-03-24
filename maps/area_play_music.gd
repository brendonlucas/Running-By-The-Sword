extends Area

var songs
var player
var tocou

func _ready():
	songs = get_parent().get_parent().get_node("player/Player/target/music")

func _physics_process(delta):
	var bodies = get_overlapping_bodies()
	for body in bodies:
		if body.name == "Player" and tocou != true:
			songs.play()
			tocou = true

func _on_music_finished():
	songs.stop()
