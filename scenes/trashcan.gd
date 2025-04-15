extends StaticBody3D

@onready var metrocop = $"../Metrocop"

func _on_area_3d_body_entered(body: Node3D) -> void:
	if body is RigidBody3D:
		metrocop.audio_stream_player_3d.stream = load("res://assets/sounds/alrightyoucango.wav")
		metrocop.audio_stream_player_3d.play()
