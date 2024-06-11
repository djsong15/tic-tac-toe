# frozen_string_literal: true

require 'colorize'

require_relative 'board'
require_relative 'player'

# Game class contains game logic of tic-tac-toe
class Game
  attr_accessor :players, :board, :win_cons, :turn

  def initialize(player1, player2, board)
    @players = [player1, player2]
    @board = board
    @win_cons = [
      [0, 1, 2], [3, 4, 5], [6, 7, 8],
      [0, 3, 6], [1, 4, 7], [2, 5, 8],
      [0, 4, 8], [2, 4, 6]
    ]
    @turn = player1.symbol
    @winner = ''
  end

  def play_game
    while @winner == ''
      board.display
      puts "\n#{@turn}, pick your spot\n"
      board.update(gets.chomp, @turn)
      break if check_tie? == true

      @winner = @turn if check_win?(@turn) == true
      @turn = @turn == 'X' ? 'O' : 'X'
    end
    board.display
    puts @winner != '' ? "#{@winner} wins!".colorize(:yellow) : 'It\'s a tie'
  end

  def check_win?(symbol)
    flat_board = @board.grid.flatten
    @win_cons.each do |con|
      return true if check_win_each?(flat_board, con, symbol)
    end
  end

  def check_win_each?(f_b, con, sym)
    f_b[con[0]] == sym &&
      f_b[con[0]] == f_b[con[1]] && f_b[con[0]] == f_b[con[2]]
  end

  def check_tie?
    @board.grid.flatten.all? { |spot| %w[X O].include?(spot) == true }
  end
end
