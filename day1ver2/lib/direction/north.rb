require_relative 'direction'

class North < Direction

  def self.turn_left
    West
  end

  def self.turn_right
    East
  end

end