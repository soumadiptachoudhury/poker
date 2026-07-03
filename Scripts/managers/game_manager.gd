extends Node

var deck := Deck.new()
var game_state := GameState.new()

var players: Array[Player] = []

func _ready():
	start_game()

func start_game():
	create_players()

	deck.create_deck()
	deck.shuffle_deck()

	deal_player_cards()
	deal_flop()
	deal_turn()
	deal_river()

func create_players():
	players.clear()

	players.append(Player.new("Atharva", 1000))
	players.append(Player.new("Aarva", 1000))
	players.append(Player.new("Divya", 1000))
	players.append(Player.new("Niharika", 1000))
	players.append(Player.new("Shreya", 1000))
	players.append(Player.new("Manasvi", 1000))
	players.append(Player.new("Vihaan", 1000))
	players.append(Player.new("Samya", 1000))
	players.append(Player.new("Bot", 1000))

func deal_player_cards():
	for i in range(2):
		for player in players:
			player.receive_card(deck.deal())

func deal_flop():
	deck.deal() # Burn card

	for i in range(3):
		game_state.add_community_card(deck.deal())
		
func deal_turn():
	deck.deal() # Burn one card
	game_state.add_community_card(deck.deal())
	
func deal_river():
	deck.deal() # Burn one card
	game_state.add_community_card(deck.deal())
