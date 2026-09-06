class_name CharacterState
extends RefCounted

var data: CharacterData
var bought: bool = false
var active: bool = false
var accumulated: float = 0.0

func _init(character_data: CharacterData):
	data = character_data
