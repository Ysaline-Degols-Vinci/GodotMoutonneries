extends Control

var state: CharacterState

func setup(character_state: CharacterState):
	state = character_state
		
	$VBoxContainer/Image.texture = state.data.image
	$VBoxContainer/Name.text = "???"
	$VBoxContainer/Production.text = "Production : " + str(state.data.production)
	$VBoxContainer/TimeToProduce.text = "Temps : " + str(state.data.time_to_produce) + " sec"
	$VBoxContainer/Price.text = "Prix : " + str(state.data.price_ticket)

	if state.bought:
		$VBoxContainer/Image.material = null
		$VBoxContainer/ButtonBuy.text = "Obtenu!"
		$VBoxContainer/Name.text = state.data.character_name
