class Card
  attr_reader :value, :suit

  def initialize(value, suit)
    @value = value
    @suit = suit
  end

  def to_s
    "#{@suit}の#{@value}"
  end

  def score
    case @value
    when "A"
      11
    when "J", "Q", "K", "10"
      10
    else
      @value.to_i
    end
  end
end