extends Control

# Declare variables for the components
@onready var texture_rect = $Vertical/TextureRect
@onready var name_label = $Vertical/NameLabel
@onready var hp_label = $Vertical/StatsContainer/HpBar
@onready var mana_label = $Vertical/StatsContainer/ManaBar
@onready var force_label = $Vertical/StatsContainer/ForceBar
@onready var int_label = $Vertical/StatsContainer/IntBar

var images = [
	"res://scenes_2/character_cards/52921841_p0.png",
	"res://scenes_2/character_cards/koish_pfp.jpg",
	"res://scenes_2/character_cards/new-pfp.png",
	"res://scenes_2/character_cards/pfp1.jpg",
	"res://scenes_2/character_cards/pfp.jpg"
]

func _ready():
	set_character()

func set_character():
	var chosen_image_path = images[randi() % images.size()]
	var chosen_image = load(chosen_image_path)
	texture_rect.texture = chosen_image

	name_label.text = generate_random_name()
	
	hp_label.set_label("HP")
	mana_label.set_label("Mana Points")
	force_label.set_label("Force")
	int_label.set_label("Intelligence")
	
	hp_label.set_value(randi_range(50, 100))
	mana_label.set_value(randi_range(20, 80))
	force_label.set_value(randi_range(10, 50))
	int_label.set_value(randi_range(10, 50))

func generate_random_name() -> String:
	var names = ["Aragorn", "Legolas", "Gimli", "Gandalf", "Frodo", "Samwise"]
	return names[randi() % names.size()]


func _on_button_pressed() -> void:
	print("Hello world!")
