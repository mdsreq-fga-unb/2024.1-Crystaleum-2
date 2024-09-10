extends Control

@onready var texture_rect = $Vertical/TextureRect
@onready var name_label = $Vertical/NameLabel
@onready var TechnicalExpertise = $Vertical/StatsContainer/TechnicalExpertise
@onready var Adaptability = $Vertical/StatsContainer/Adaptability
@onready var Collaboration = $Vertical/StatsContainer/Collaboration
@onready var Leadership = $Vertical/StatsContainer/Leadership
@onready var button = $Button

var is_selected = false

func _ready():
	update_selection_state()

func initialize_character(image_path: String = "", char_name: String = "", te: int = 0, ad: int = 0, cb: int = 0, ld: int = 0) -> void:
	if image_path != "":
		var chosen_image = load(image_path) as Texture2D
		if chosen_image != null:
			texture_rect.texture = chosen_image
		else:
			print("Error: Could not load image from path: " + image_path)
	else:
		texture_rect.texture = null

	name_label.text = char_name if char_name != "" else generate_random_name()
	
	TechnicalExpertise.set_label("Habilidade Técnica")
	Adaptability.set_label("Adaptabilidade")
	Collaboration.set_label("Colaborabilidade")
	Leadership.set_label("Liderança")
	
	TechnicalExpertise.set_value(te if te != 0 else randi_range(1, 5))
	Adaptability.set_value(ad if ad != 0 else randi_range(1, 5))
	Collaboration.set_value(cb if cb != 0 else randi_range(1, 5))
	Leadership.set_value(ld if ld != 0 else randi_range(1, 5))

func generate_random_name() -> String:
	var names = ["Aragorn", "Legolas", "Gimli", "Gandalf", "Frodo", "Samwise"]
	return names[randi() % names.size()]

func _on_button_pressed() -> void:
	var attributes = {
		"TECHNICAL_EXPERTISE": TechnicalExpertise.get_value(),
		"ADAPTABILITY": Adaptability.get_value(),
		"COLLABORATION": Collaboration.get_value(),
		"LEADERSHIP": Leadership.get_value(),
	}

	SelectionManager.toggle_selection(self, attributes)
	emit_signal("button_pressed", self, attributes)
	
func select() -> void:
	is_selected = true
	modulate = Color(1, 1, 1, 0.5)

func deselect() -> void:
	is_selected = false
	modulate = Color(1, 1, 1, 1)

func update_selection_state() -> void:
	if SelectionManager.is_selected(self):
		select()
	else:
		deselect()
