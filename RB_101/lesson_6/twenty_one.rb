def initialize_deck
  deck = []
  suit = (2..10).map{ |n| n } + ["Jack", "Queen", "King", "Ace"]
  deck = suit * 4 
end

def draw_card(deck)
  i = (0..(deck.size-1)).sample
  deck.delete_at(i)
end

deck = initialize_deck

card = draw_card(deck)

deck