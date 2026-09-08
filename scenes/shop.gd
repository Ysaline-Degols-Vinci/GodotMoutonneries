extends Control

var shop_character_scene = preload("res://scenes/shop_character.tscn")

func _ready():
	for character_state in GameData.characters:
		
		var shop_character = shop_character_scene.instantiate()
		
		shop_character.setup(character_state.data)
		
		$CharacterGrid.add_child(shop_character)
