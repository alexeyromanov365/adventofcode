require_relative 'direction'

class South < Direction

  def self.turn_left
    East
  end

  def self.turn_right
    West
  end

end