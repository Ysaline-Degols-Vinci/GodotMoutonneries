extends Node

var characters: Array[CharacterState] = []

func _ready():
	var mouton = load("res://Data/moufete.tres") as CharacterData
	
	characters.append(CharacterState.new(mouton))
#créée le mouton, puis son état dans la partie (tt false par défaut) 
# accessible partt via autoload (dans param)
