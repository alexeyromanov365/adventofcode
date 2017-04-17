require_relative 'direction/north'
require_relative 'direction/east'
require_relative 'direction/west'
require_relative 'direction/south'
require_relative 'file/file_reader'
require_relative 'move'
require_relative 'coordinate'

class Map

  attr_accessor :final_distance

  @@x = 0
  @@y = 0

  def self.x=(value)
    @@x = value
  end

  def self.y=(value)
    @@y = value
  end

  def self.x
    @@x
  end

  def self.y
    @@y
  end

  def initialize
    @file = FileReader.new
    @direction = North
    @final_distance = 0
  end

  def run
    @file.moves.each do |move|
      if move.direction.join.to_s == 'L'
        @direction = @direction.turn_left
      else
        @direction = @direction.turn_right
      end
      @final_distance = Coordinate.new.step_coordinate(@direction, move.steps)
    end
    puts @final_distance
  end
end

Map.new.run

