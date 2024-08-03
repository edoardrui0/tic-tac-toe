# need to get input from user and update the board if the user selected between numbers 1-9
# if not, alert the player they selected something that isn't allowed

require_relative 'board'

class Player
  attr_accessor :name, :board, :ttt_board_arr

  def initialize(name)
    @name = name
    @board = Board.new
  end

  def input
    player_input = gets.chomp.to_i

    @board.update_board(player_input, 'x')
    puts @board.display_board
  end
end

player1 = Player.new('Player1')
# eddie.input
puts player1.input
