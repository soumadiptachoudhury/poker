class_name GameState

enum RoundState {
	PRE_FLOP,
	FLOP,
	TURN,
	RIVER,
	SHOWDOWN
}

var current_state = RoundState.PRE_FLOP

var pot: int = 0
var community_cards: Array[PlayingCard] = []

var dealer_position: int = 0
var current_turn: int = 0

func add_community_card(card: PlayingCard):
	community_cards.append(card)

func clear_community_cards():
	community_cards.clear()
