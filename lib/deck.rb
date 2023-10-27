require_relative 'card'

class Deck
  SUITS = %w[ハート ダイヤ クラブ スペード]
  VALUES = %w[A 2 3 4 5 6 7 8 9 10 J Q K]

  def initialize
    @cards = SUITS.product(VALUES).map { |suit, value| Card.new(value, suit) }.shuffle
  end

  def draw
    @cards.pop
  end
end
