# frozen_string_literal: true

# Boar class contains initializes tic tac toe board
class Board
  attr_accessor :grid

  def initialize
    @grid = [
      %w[1 2 3],
      %w[4 5 6],
      %w[7 8 9]
    ]
  end

  def display
    puts "\n"
    @grid.each_with_index do |row, r_i|
      row_str = ' '
      row.each_with_index do |col, c_i|
        row_str += "#{col} "
        row_str += '| ' if c_i < 2
      end
      puts row_str
      puts '-----------' if r_i < 2
    end
  end

  def update(spot, symbol)
    r = (spot.to_i - 1) / 3
    c = (spot.to_i - 1) % 3
    if @grid[r][c] == 'X' || @grid[r][c] == 'O'
      puts 'Taken, pick another spot'
      update(gets.chomp, symbol)
    else
      @grid[r][c] = symbol
    end
  end
end
