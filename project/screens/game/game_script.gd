extends Node2D

@export var play_menu: PackedScene

@onready var interface_layer: CanvasLayer = %InterfaceLayer

func _input(event: InputEvent) -> void:
	if event.is_action_pressed("game_open_play_menu"):
		interface_layer.add_child(play_menu.instantiate())
		get_viewport().set_input_as_handled()
