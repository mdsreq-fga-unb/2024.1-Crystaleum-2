extends Control

var card_scene = preload("res://scenes_2/CharacterCard.tscn")

func _ready():
	for i in range(10): # Create 10 character cards for example
		var card = card_scene.instantiate()
		$Scroll/GridContainer.add_child(card)
