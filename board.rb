class Board
  attr_accessor :board_pos, :cross_arr, :notch_arr

  WINNING_COMBINATIONS = [[0, 1, 2], [3, 4, 5], [6, 7, 8], # Horizontal
                          [0, 3, 6], [1, 4, 7], [2, 5, 8], # Vertical
                          [0, 4, 8], [2, 4, 6]] # Diagonal

  def initialize
    @board_pos = [1, 2, 3, 4, 5, 6, 7, 8, 9]
    @cross_arr = []
    @notch_arr = []
  end

  def display_board
    <<~HEREDOC
      #{@board_pos[0]} | #{@board_pos[1]} | #{@board_pos[2]}
      ---------
      #{@board_pos[3]} | #{@board_pos[4]} | #{@board_pos[5]}
      ---------
      #{@board_pos[6]} | #{@board_pos[7]} | #{@board_pos[8]}
    HEREDOC
  end

  def update_board(pos, marker)
    @board_pos.each_with_index do |row, index|
      if marker == 'x'
        @board_pos[index] = marker if row == pos
        @cross_arr.push(index) if @board_pos[index] == marker
      elsif marker == 'o'
        @board_pos[index] = marker if row == pos
        @notch_arr.push(index) if @board_pos[index] == marker
      end
    end
  end

  def check_winner
    WINNING_COMBINATIONS.any? do |combination|
      combination.all? { |element| @cross_arr.uniq.include?(element) }
    end
  end
end

new_board = Board.new
