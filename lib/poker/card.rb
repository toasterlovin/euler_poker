module Poker
  RANKINGS = {
    '2' => 2,
    '3' => 3,
    '4' => 4,
    '5' => 5,
    '6' => 6,
    '7' => 7,
    '8' => 8,
    '9' => 9,
    'T' => 10,
    'J' => 11,
    'Q' => 12,
    'K' => 13
  }

  SUITS = {
    'S' => :spade,
    'H' => :heart,
    'D' => :diamond,
    'C' => :club
  }

  class Card
    attr_reader :value, :ranking, :suit

    def initialize(card)
      @value = card
      @ranking = RANKINGS[card[0]]
      @suit = SUITS[card[1]]
    end
  end
end