# frozen_string_literal: true

require './lib/game'

board = Board.new

game = Game.new(nil, nil, board)

puts game.display_board
