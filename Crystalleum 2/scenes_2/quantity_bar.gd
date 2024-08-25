extends Control

@onready var name_label = $VBoxContainer/NameLabel
@onready var progress_bar = $VBoxContainer/HBoxContainer/ProgressBar

func set_label(new_name: String) -> void:
	name_label.text = new_name

func set_value(new_value: int) -> void:
	progress_bar.value = new_value
