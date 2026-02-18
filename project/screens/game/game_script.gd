extends Node3D

@export var play_menu: PackedScene
@export_file("*.tscn", "*.scn") var current_level: String

@onready var interface_layer: CanvasLayer = %InterfaceLayer

signal paused

func _ready() -> void:
	Input.mouse_mode = Input.MOUSE_MODE_CAPTURED
	var level = load(current_level).instantiate()
	add_child(level)
	
func _input(event: InputEvent) -> void:
	if event.is_action_pressed("game_open_play_menu"):
		interface_layer.add_child(play_menu.instantiate())
		get_viewport().set_input_as_handled()
