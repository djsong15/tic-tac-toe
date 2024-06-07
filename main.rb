# frozen_string_literal: true

require './lib/game'
require './lib/player'
require './lib/board'

# Methods for starting tic-tac-toe
module StartGame
  def self.tic_tac_toe
    players = select_symbols
    puts "Player 1 is #{players[0].symbol}, Player 2 is #{players[1].symbol}\n"
    Game.new(*players, Board.new).play_game
  end

  def self.select_symbols
    selection_made = false
    until selection_made
      puts "Player 1, select your symbol \n X or O"
      selection = gets.chomp
      next unless selection.upcase == 'X' || selection.upcase == 'O'

      player_one = Player.new(selection.upcase)
      player_two = Player.new(selection.upcase == 'X' ? 'O' : 'X')
      selection_made = true
    end
    [player_one, player_two]
  end
end

StartGame.tic_tac_toe
