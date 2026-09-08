extends Control

var shop_character_scene = preload("res://scenes/shop_character.tscn")

func _ready():
	for character_state in GameData.characters:
		
		var shop_character = shop_character_scene.instantiate()
		
		shop_character.setup(character_state)
		
		$CharacterGrid.add_child(shop_character)


func _on_button_game_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/game.tscn")
