require_relative 'direction'

class West < Direction

  def self.turn_left
    South
  end

  def self.turn_right
    North
  end



end