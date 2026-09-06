extends Control

var data: CharacterData

func setup(character_data: CharacterData):
	data = character_data
	$Name.text = data.character_name
	$Image.texture = data.image
	$Production.text = str(data.production)
	$price_ticket.text = str(data.price_ticket)
	$time_to_produce.text = str(data.time_to_produce)
	
	
