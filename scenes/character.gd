extends Area2D

var data: CharacterData

func setup(character_data: CharacterData):
	data = character_data
	
	$Sprite2D.texture = data.image
