class Board
  attr_accessor :board_pos

  def initialize
    @board_pos = [[1, 2, 3], [4, 5, 6], [7, 8, 9]]
  end

  def display_board
    <<~HEREDOC
      #{@board_pos[0][0]} | #{@board_pos[0][1]} | #{@board_pos[0][2]}
      ---------
      #{@board_pos[1][0]} | #{@board_pos[1][1]} | #{@board_pos[1][2]}
      ---------
      #{@board_pos[2][0]} | #{@board_pos[2][1]} | #{@board_pos[2][2]}
    HEREDOC
  end

  def update_board(pos, marker)
    @board_pos.each_with_index do |row, index|
      row.each_with_index do |cell, sub_index|
        @board_pos[index][sub_index] = marker if cell == pos
      end
    end
  end
end

new_board = Board.new
# p new_board.update_board(1, 'X')
# puts new_board.display_board
