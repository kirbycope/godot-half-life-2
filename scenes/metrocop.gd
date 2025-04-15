extends Node3D

const DIE_1 = preload("res://assets/sounds/die1.wav")
const DIE_2 = preload("res://assets/sounds/die2.wav")
const DIE_3 = preload("res://assets/sounds/die3.wav")
@onready var audio_stream_player_3d: AudioStreamPlayer3D = $AudioStreamPlayer3D
@onready var skeleton_3d: Skeleton3D = $Police_reference_skeleton/GeneralSkeleton
@onready var physical_bone_simulator_3d: PhysicalBoneSimulator3D = $Police_reference_skeleton/GeneralSkeleton/PhysicalBoneSimulator3D
var simulation_started := false


func toggle_simulation() -> void:
	if simulation_started:
		simulation_started = false
		physical_bone_simulator_3d.physical_bones_stop_simulation()
		skeleton_3d.reset_bone_poses() 
	else:
		simulation_started = true
		physical_bone_simulator_3d.physical_bones_start_simulation()

		# Play a random die sound
		var die_sounds = [DIE_1, DIE_2, DIE_3]
		var random_sound = die_sounds[randi() % die_sounds.size()]
		audio_stream_player_3d.stream = random_sound
		audio_stream_player_3d.play()
