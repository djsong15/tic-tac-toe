# frozen_string_literal: true

# Boar class contains initializes tic tac toe board
class Board
  def initialize
    @grid = Array.new(3, Array.new(3, '-'))
  end
end
