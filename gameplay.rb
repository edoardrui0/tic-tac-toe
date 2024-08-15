require_relative 'board'
require_relative 'player'

class Gameplay
  attr_accessor :board, :player1, :player2

  def initialize
    @board = Board.new
    @player1 = Player.new('Player1', 'x', true)
    @player2 = Player.new('Player2', 'x', false)
  end

  def game
    puts "Welcome to Tic Tac Toe! We'll start by asking your names.\n\n"
    puts "Enter Player 1's name"
    @player1.name = gets.chomp
    puts "Player 1 is '#{@player1.name}'. They will be 'x' and will go first\n\n"
    puts "Enter Player 2's name"
    @player2.name = gets.chomp
    puts "Player 2 is '#{@player2.name}'. They will be 'o'\n\n"

    until board.check_winner
      if player1.turn == true && player2.turn == false
        puts "#{@player1.name}'s turn; Pick a position in the board (1-9)"
        player1_input = gets.chomp.to_i

        if player1_input.between?(1, 9)
          @board.update_board(player1_input, 'x')
          puts @board.display_board
          player1.turn = false
          player2.turn = true
          if board.check_winner
            puts "#{@player1.name} wins!"
            break
          end
          if board.check_tie
            puts "It's a tie!"
            break
          end
        else
          puts 'Invalid input'
        end
      end

      if player2.turn == true && player1.turn == false # rubocop:disable Style/Next
        puts "#{@player2.name}'s turn; Pick a position in the board (1-9)"
        player2_input = gets.chomp.to_i

        if player2_input.between?(1, 9)
          @board.update_board(player2_input, 'o')
          puts @board.display_board
          player1.turn = true
          player2.turn = false
          if board.check_winner
            puts "#{@player2.name} wins!"
            break
          end
          if board.check_tie
            puts "It's a tie!"
            break
          end
        else
          puts 'Invalid input'
        end
      end
    end
  end
end
