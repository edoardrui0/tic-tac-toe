# need to get input from user and update the board if the user selected between numbers 1-9
# if not, alert the player they selected something that isn't allowed

require_relative 'board'

class Player
  def initialize(name)
    @name = name
  end

  def input
    player_input = gets
    player_input.chomp.to_i.between?(1, 9) ? (p player_input.chomp.to_i) : (p 'invalid input')
  end
end

eddie = Player.new('Eddie')
eddie.input
# test = Board.new
# puts test.new_board
