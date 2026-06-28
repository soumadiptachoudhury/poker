class_name Player

var player_name: String
var chips: int 
var hand: Array[PlayingCard] = []
var current_bet: int = 0
var folded: bool = false
var all_in: bool = false

func receive_card(card: PlayingCard):
	hand.append(card)

func clear_hand():
	hand.clear()

func _init(name:String, starting_chips: int):
	player_name = name
	chips = starting_chips
	
