extends Node2D

var character_scene = preload("res://scenes/character.tscn")

func _ready():
	for character_state in GameData.characters:
		
		var character = character_scene.instantiate()
		
		character.setup(character_state.data)
		
		$CharactersContainer.add_child(character)
