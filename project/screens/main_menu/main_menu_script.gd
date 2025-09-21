extends Node2D

@export_file("*.tscn", "*.scn") var game_scene_path: String

@onready var play_button: Button = %PlayButton
@onready var quit_button: Button = %QuitButton

func _ready() -> void:
	play_button.grab_focus()
	play_button.pressed.connect(_on_play_button_pressed)
	
	quit_button.visible = not OS.has_feature("web")
	quit_button.pressed.connect(_on_quit_button_pressed)

func _on_play_button_pressed() -> void:
	get_tree().change_scene_to_file(game_scene_path)
	
func _on_quit_button_pressed() -> void:
	get_tree().quit()
