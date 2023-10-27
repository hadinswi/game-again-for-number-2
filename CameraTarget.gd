extends Node2D

# Reference to the player character (assuming it's a child of the same parent)
var player

func _ready():
	# Get a reference to the player character using an absolute path
	player = get_node("/root/Node2D/playerguy")  # Update the path to match your scene structure

func _process(delta):
	if player:
		# Center the CameraTarget node on the player's position
		global_position = player.global_position
