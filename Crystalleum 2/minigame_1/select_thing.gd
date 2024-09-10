extends Control

@onready var grid = $Scroll/GridContainer
var db : SQLite = null
const verbosity_level : int = SQLite.VERBOSE
var db_name := "res://minigame_1/main.db"

@onready var card_scene = preload("res://minigame_1/CharacterCard.tscn")

const TIME_TO_RELEASE: float = 6.0
const STABILITY_OF_REQUIREMENTS: float = 30.0
const CUSTOMER_AVAILABILITY: float = 80.0
const MAX_TIME: float = 12.0

const min_score: float = 24.6
const max_score: float = 29.0

func _ready():
	db = SQLite.new()
	db.path = db_name
	db.verbosity_level = verbosity_level
	if !db.open_db():
		print("Failed to open database.")
		return
	var query = "SELECT * FROM EMPLOYEES;"
	if !db.query(query):
		print("Query failed.")
		return
	
	var table_name = "EMPLOYEES"
	var select_condition : String = ""
	var columns : Array = ["NAME", "TECHNICAL_EXPERTISE", "ADAPTABILITY", "COLLABORATION", "LEADERSHIP", "IMAGE_PATH"]
	var selected_array : Array = db.select_rows(table_name, select_condition, columns)
	for row in selected_array:
		var name = row["NAME"]
		
		var technical_expertise = row["TECHNICAL_EXPERTISE"]
		var adaptability = row["ADAPTABILITY"]
		var collaboration = row["COLLABORATION"]
		var leadership = row["LEADERSHIP"]
		
		var image_path = row["IMAGE_PATH"]
		
		var card = card_scene.instantiate()
		grid.add_child(card)
		card.initialize_character(image_path, name, technical_expertise, adaptability, collaboration, leadership)

func _on_button_pressed() -> void:
	var selected_cards = SelectionManager.get_selected_cards()

	var total_technical_expertise = 0
	var total_adaptability = 0
	var total_collaboration = 0
	var total_leadership = 0

	for item in selected_cards:
		var attributes = item["attributes"]
		total_technical_expertise += attributes["TECHNICAL_EXPERTISE"]
		total_adaptability += attributes["ADAPTABILITY"]
		total_collaboration += attributes["COLLABORATION"]
		total_leadership += attributes["LEADERSHIP"]
	
	var team_score = calculate_team_score(
		total_technical_expertise,
		total_adaptability,
		total_collaboration,
		total_leadership
	)
	
	var normalized_score = (team_score - min_score) / (max_score - min_score) * 100.0
	
	var grade = grade_user_team(normalized_score)
	print("User Team Grade:", grade)
	
	if normalized_score >= 50:
		self.visible = false
		# Agora você chama o dialogue manager para iniciar o próximo diálogo e continuar o jogo.
		# Parabenize o jogador por ter conseguido, etc
	
	if normalized_score < 50:
		pass
		# Aqui você pode reniniciar a fase
		$ErrouLabel.visible = true
		await get_tree().create_timer(1.0).timeout
		get_tree().change_scene_to_file("res://scenes/menu.tscn")	

func calculate_team_score(
	technical_expertise: int,
	adaptability: int,
	collaboration: int,
	leadership: int
) -> float:
	var t_prime = 1.0 - (TIME_TO_RELEASE / MAX_TIME)
	var s_prime = STABILITY_OF_REQUIREMENTS / 100.0
	var c_prime = CUSTOMER_AVAILABILITY / 100.0

	var w_te = s_prime * (1.0 - t_prime)
	var w_psa = (1.0 - s_prime) * t_prime
	var w_collab = 0.5 * (c_prime + (1.0 - s_prime))
	var w_lead_cf = 0.5 * (c_prime + s_prime)

	return technical_expertise * w_te + adaptability * w_psa + collaboration * w_collab + leadership * w_lead_cf

func grade_user_team(score: float) -> String:
	var max_score = 100.0
	var _normalized_score = (score / max_score) * 100.0
	print(score)
	if score >= 90.0: 
		return "Excellent"
	if score >= 70.0:
		return "Good"
	if score >= 50.0:
		return "Average"
	return "Needs Improvement"
