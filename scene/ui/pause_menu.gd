extends Control

func _ready():
	visible = false


func resume():
	get_tree().paused = false
	visible = false


func _on_resume_button_pressed():
	resume()


func _on_main_menu_button_pressed():
	get_tree().paused = false
	get_tree().change_scene_to_file("res://scene/ui/main_menu.tscn")


func _on_exit_button_pressed():
	get_tree().quit()
