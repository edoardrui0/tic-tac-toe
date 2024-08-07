require_relative 'board'

class Player
  attr_accessor :name, :board, :ttt_board_arr

  def initialize(name)
    @name = name
    @board = Board.new
  end

  def game
    puts 'Pick a position in the board (1-9)'

    until @board.check_winner
      player_input = gets.chomp.to_i

      if player_input.between?(1, 9)
        @board.update_board(player_input, 'x')
        puts @board.display_board
      else
        puts 'Invalid input'
      end
    end
  end
end

player1 = Player.new('Player1')
player1.game
