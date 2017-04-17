require_relative 'direction'

class East < Direction

  def self.turn_left
    North
  end

  def self.turn_right
    South
  end


end