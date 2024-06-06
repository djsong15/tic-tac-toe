# frozen_string_literal: true

# Player class for both players
class Player
  attr_reader :symbol

  def initialize(symbol)
    @symbol = symbol
  end
end
