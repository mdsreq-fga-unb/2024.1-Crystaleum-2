extends Node

@export var max_selections: int = 4

var selected_cards: Array = []

func _ready():
	selected_cards.clear()

func toggle_selection(card: Node, attributes: Dictionary) -> void:
	for item in selected_cards:
		if item["card"] == card:
			selected_cards.erase(item)
			card.deselect()
			return

	if selected_cards.size() < max_selections:
		selected_cards.append({"card": card, "attributes": attributes})
		card.select()
	else:
		print("Cannot select more than ", max_selections, " cards.")

func is_selected(card: Node) -> bool:
	for item in selected_cards:
		if item["card"] == card:
			return true
	return false

func get_selected_cards() -> Array:
	return selected_cards
