extends Control

var shop_character_scene = preload("res://scenes/shop_character.tscn")

func _ready():
	print("AAAAAAAAAAAAAAAAAAAAAAA")
	for character_state in GameData.characters:
		
		var shop_character = shop_character_scene.instantiate()
		print("Création de : ", character_state.data.character_name)

		shop_character.setup(character_state)
		
		$ScrollContainer/CharacterGrid.add_child(shop_character)
		print("Taille du grid : ", $ScrollContainer/CharacterGrid.size)
		print("Taille du scroll : ", $ScrollContainer.size)


func _on_button_game_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/game.tscn")
