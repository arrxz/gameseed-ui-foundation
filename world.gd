extends Node2D
@onready var pause_menu = $CanvasLayer/PauseMenu
func _process(_delta):
	if Input.is_action_just_pressed("ui_cancel"):

		if get_tree().paused:
			pause_menu.visible = false
			get_tree().paused = false

		else:
			pause_menu.visible = true
			get_tree().paused = true
