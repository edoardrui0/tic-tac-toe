class Board
  def new_board
    board_pos = [[1, 2, 3], [4, 5, 6], [7, 8, 9]]

    <<~HEREDOC
      #{board_pos[0][0]} | #{board_pos[0][1]} | #{board_pos[0][2]}
      ---------
      #{board_pos[1][0]} | #{board_pos[1][1]} | #{board_pos[1][2]}
      ---------
      #{board_pos[2][0]} | #{board_pos[2][1]} | #{board_pos[2][2]}
    HEREDOC
  end
end

# test = Board.new
# puts test.new_board
