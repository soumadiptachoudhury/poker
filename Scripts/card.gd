class_name PlayingCard
enum Suit{
	CLUBS,
	DIMAONDS,
	HEARTS,
	SPADES
}

enum Rank{
	TWO = 2,
	THREE,
	FOUR,
	FIVE,
	SIX,
	SEVEN,
	EIGHT,
	NINE,
	TEN,
	JACK,
	QUEEN,
	KING,
	ACE
}

var suit: Suit
var rank: Rank

func _init(r:Rank, s: Suit):
	rank = r
	suit = s
