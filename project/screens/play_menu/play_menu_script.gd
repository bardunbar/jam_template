extends Control

@onready var resume_button: Button = %ResumeButton
@onready var main_menu_button: Button = %MainMenuButton
@onready var quit_button: Button = %QuitButton

func _ready() -> void:
	resume_button.grab_focus()
	
	resume_button.pressed.connect(_on_resume_button_pressed)
	main_menu_button.pressed.connect(_on_main_menu_button_pressed)
	quit_button.pressed.connect(_on_quit_button_pressed)
	
func _on_resume_button_pressed() -> void:
	queue_free()
	
func _on_main_menu_button_pressed() -> void:
	# Temp until I can figure out this flow properly
	get_tree().change_scene_to_file("res://screens/main_menu/main_menu_scene.tscn")

func _on_quit_button_pressed() -> void:
	get_tree().quit()

func _input(event: InputEvent) -> void:
	if event.is_action_pressed("game_open_play_menu"):
		get_viewport().set_input_as_handled()
		_on_resume_button_pressed()
