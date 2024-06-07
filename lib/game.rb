# frozen_string_literal: true

require_relative 'board'
require_relative 'player'

# Game class contains game logic of tic-tac-toe
class Game
  attr_accessor :players, :board, :win_cons, :turn

  def initialize(player1, player2, board)
    @players = [player1, player2]
    @board = board
    @win_cons = [
      ['0,0', '0,1', '0,2'], ['1,0', '1,1', '1,2'], ['2,0', '2,1', '2,2'],
      ['0,0', '1,0', '2,0'], ['0,1', '1,1', '2,1'], ['0,2', '1,2', '2,2'],
      ['0,0', '1,1', '2,2'], ['0,2', '1,1', '2,0']
    ]
    @turn = player1.symbol
  end

  def play_game
    puts "Player 1 is #{@players[0].symbol}, Player 2 is #{@players[1].symbol}"
    board.display
    puts "#{@turn}, pick your spot \n"
    spot = gets.chomp
    board.update(spot, @turn)
  end
  
end
