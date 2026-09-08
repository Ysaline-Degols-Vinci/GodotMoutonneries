extends Node2D

var character_scene = preload("res://scenes/character.tscn")

func _ready():
	var slot_number = 1
	
	for character_state in GameData.characters:
		if not character_state.active:
			continue
		var character = character_scene.instantiate()
		
		character.setup(character_state.data)
		
		var slot = get_node("Slot" + str(slot_number))
		character.position = slot.position
		
		add_child(character)
		
		slot_number += 1


func _on_shop_button_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/shop.tscn")
