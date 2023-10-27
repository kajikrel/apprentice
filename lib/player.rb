require_relative 'card'
require_relative 'deck'

class Player
  attr_reader :cards

  def initialize
    @cards = []
  end

  def hit(deck)
    @cards << deck.draw
  end

  def score
    total = @cards.sum { |card| card.score }

    # Aのカードが存在し、合計が21を超える場合、10点を引く
    @cards.each do |card|
      if card.value == "A" && total > 21
        total -= 10
      end
    end

    total
  end
end