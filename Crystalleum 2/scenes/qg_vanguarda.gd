extends Control

var dialogues = []
var starts = []
var images = []
var current_index = 0

func _ready() -> void:
	dialogues = [
		load("res://dialogos/DialogoMaeCrys.dialogue"),
		load("res://dialogos/DialogoGuardiao.dialogue"),
	]
	
	starts = [
		"startMae",
		"startG"
	]
	
	images = [
		load("res://personagem/assets/mae_crys/Mãe Crys_0001.png"),
		load("res://personagem/assets/guardião/guardião_still.png"),
	]
	
	DialogueManager.connect("dialogue_ended", Callable(self, "_on_dialogue_ended"))
	
	start_dialogue_sequence()

func start_dialogue_sequence() -> void:
	if current_index < dialogues.size():
		$TextureRect.texture = images[current_index] as Texture2D
		
		DialogueManager.show_example_dialogue_balloon(dialogues[current_index], starts[current_index])
	else:
		print("All dialogues have finished.")

func _on_dialogue_ended(resource: DialogueResource) -> void:
	if resource == dialogues[current_index]:
		current_index += 1
		start_dialogue_sequence()
