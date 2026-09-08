extends Control

var data: CharacterData

func setup(character_data: CharacterData):
	data = character_data
	
	$VBoxContainer/Image.texture = data.image
	$VBoxContainer/Name.text = data.character_name
	$VBoxContainer/Production.text = "Production : " + str(data.production)
	$VBoxContainer/TimeToProduce.text = "Temps : " + str(data.time_to_produce) + " sec"
	$VBoxContainer/Price.text = "Prix : " + str(data.price_ticket)
