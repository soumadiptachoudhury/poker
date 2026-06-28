class_name Deck

var cards: Array[PlayingCard] = []

func create_deck():
	cards.clear()
	
	for suit in PlayingCard.Suit.values():
		for rank in PlayingCard.Rank.values():
			cards.append(PlayingCard.new(rank, suit))

func shuffle_deck():
	cards.shuffle()

func deal() -> PlayingCard:
	return cards.pop_front()
