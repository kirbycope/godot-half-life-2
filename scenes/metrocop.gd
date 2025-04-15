extends Node3D

@onready var general_skeleton: Skeleton3D = %GeneralSkeleton


func _ready():
	general_skeleton.physical_bones_start_simulation()
	#general_skeleton.physical_bones_stop_simulation()
