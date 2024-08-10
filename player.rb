class Player
  attr_accessor :name, :marker, :turn

  def initialize(name, marker, turn)
    @name = name
    @marker = marker
    @turn = turn
  end
end
