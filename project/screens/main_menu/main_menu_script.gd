extends Node2D

@export var game_scene: PackedScene

@onready var play_button: Button = %PlayButton
@onready var quit_button: Button = %QuitButton

func _ready() -> void:
	play_button.grab_focus()
	play_button.pressed.connect(_on_play_button_pressed)
	
	quit_button.visible = not OS.has_feature("web")
	quit_button.pressed.connect(_on_quit_button_pressed)

func _on_play_button_pressed() -> void:
	get_tree().change_scene_to_packed(game_scene)
	
func _on_quit_button_pressed() -> void:
	get_tree().quit()
