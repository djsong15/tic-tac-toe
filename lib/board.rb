# frozen_string_literal: true

# Boar class contains initializes tic tac toe board
class Board
  def initialize
    @grid = Array.new(3, Array.new(3, '-'))
  end

  def display
    puts "
     #{@grid[0][0]} | #{@grid[0][1]} | #{@grid[0][2]}
    -----------
     #{@grid[1][0]} | #{@grid[1][1]} | #{@grid[1][2]}
    -----------
     #{@grid[2][0]} | #{@grid[2][1]} | #{@grid[2][2]}"
  end
end
