extends Control

 
func _ready():
	pass
	
func _process(_delta):
	pass

func _on_jogar_pressed():
	get_tree().change_scene_to_file("res://scenes/historia1.tscn")	
	

func _on_config_pressed():
	get_tree().change_scene_to_file("res://scenes/tutorial.tscn")

func _on_sair_pressed():
	get_tree().quit()
