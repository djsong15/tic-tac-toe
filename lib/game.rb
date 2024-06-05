# frozen_string_literal: true

require_relative 'board'

# Game class contains game logic of tic-tac-toe
class Game
  attr_accessor :player1, :player2, :board, :win_cons

  @win_cons = [
    ['0,0', '0,1', '0,2'], ['1,0', '1,1', '1,2'], ['2,0', '2,1', '2,2'],
    ['0,0', '1,0', '2,0'], ['0,1', '1,1', '2,1'], ['0,2', '1,2', '2,2'],
    ['0,0', '1,1', '2,2'], ['0,2', '1,1', '2,0']
  ]

  def initialize(player1, player2, board)
    @player1 = player1
    @player2 = player2
    @board = board
  end

  def display_board
    board.display
  end
  
end
