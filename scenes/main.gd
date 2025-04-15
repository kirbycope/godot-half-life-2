extends Node3D

var in_button_range := false
@onready var metrocop: Node3D = $Metrocop
@onready var player: CharacterBody3D = $Player


func _ready() -> void:
	player.camera.switch_to_first_person()
	


func _input(event: InputEvent) -> void:
	if event.is_action_pressed("use") \
	and player.raycast_middle.is_colliding() \
	and in_button_range:
		metrocop.toggle_simulation()


func _on_area_3d_body_entered(body: Node3D) -> void:
	if body is CharacterBody3D:
		in_button_range = true


func _on_area_3d_body_exited(body: Node3D) -> void:
	if body is CharacterBody3D:
		in_button_range = false
