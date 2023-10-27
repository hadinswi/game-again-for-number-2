extends Area2D

var reset_position: Node2D = null  # Reference to the reset position Node2D

func _ready():
	# Find the ResetPosition child node by name
	reset_position = get_node("ResetPosition")
	
	if reset_position == null:
		# Handle the case where the ResetPosition node is not found
		print("ResetPosition node not found.")
		return

func _on_Area2D_body_entered(body):
	if reset_position != null and body.has_method("set_global_position"):
		# Check if the colliding body has a set_global_position method (like a KinematicBody2D)
		body.set_global_position(reset_position.global_position)
