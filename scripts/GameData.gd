extends Node

var characters: Array[CharacterState] = []

func _ready():
	var mouton = load("res://Data/moufete.tres") as CharacterData
	
	var mouton_state = CharacterState.new(mouton)
	mouton_state.bought = true
	mouton_state.active = true
	
	characters.append(mouton_state)
#créée le mouton, puis son état dans la partie (tt false par défaut) 
# accessible partt via autoload (dans param)
