extends Node

var characters: Array[CharacterState] = []

func _ready():
	var data_folder = DirAccess.open("res://Data")
	
	for file_name in data_folder.get_files():
		if file_name.ends_with(".tres"):
			var character_data = load("res://Data/" + file_name) as CharacterData
			
			var character_state = CharacterState.new(character_data)
			
			if character_data.price_ticket == 0:
				character_state.bought = true
				character_state.active = true
			else:
				character_state.bought = false
				character_state.active = false
			
			characters.append(character_state)
#créée le mouton, puis son état dans la partie (tt false par défaut) 
# accessible partt via autoload (dans param)
