class Test
  
  # norht = 1
  # east = 2
  # south = 3
  # west = 4
  
  attr_reader :string, :array, :direction_of_coordinate, :start_point, :end_point
  
  def initialize
    @string = 'R3, L5, R1, R2, L5, R2, R3, L2, L5, R5, L4, L3, R5, L1, R3, R4, R1, L3, R3, L2, L5, L2, R4, R5, R5, L4, L3, L3, R4, R4, R5, L5, L3, R2, R2, L3, L4, L5, R1, R3, L3, R2, L3, R5, L194, L2, L5, R2, R1, R1, L1, L5, L4, R4, R2, R2, L4, L1, R2, R53, R3, L5, R72, R2, L5, R3, L4, R187, L4, L5, L2, R1, R3, R5, L4, L4, R2, R5, L5, L4, L3, R5, L2, R1, R1, R4, L1, R2, L3, R5, L4, R2, L3, R1, L4, R4, L1, L2, R3, L1, L1, R4, R3, L4, R2, R5, L2, L3, L3, L1, R3, R5, R2, R3, R1, R2, L1, L4, L5, L2, R4, R5, L2, R4, R4, L3, R2, R1, L4, R3, L3, L4, L3, L1, R3, L2, R2, L4, L4, L5, R3, R5, R3, L2, R5, L2, L1, L5, L1, R2, R4, L5, R2, L4, L5, L4, L5, L2, L5, L4, R5, R3, R2, R2, L3, R3, L2, L5'
    @array = []
    @direction_of_coordinate = 1
    @start_point = [0, 0]
    @end_point = [0, 0]
  end
  
  def split_str
    @array = @string.split(', ')
  end
  
  def turn_right
    if @direction_of_coordinate == 4
      @direction_of_coordinate = 1
    elsif @direction_of_coordinate < 4 && @direction_of_coordinate > 0
      @direction_of_coordinate += 1
    end
  end
  
  def turn_left
    if @direction_of_coordinate == 1
      @direction_of_coordinate = 4
    elsif @direction_of_coordinate < 5 && @direction_of_coordinate > 1
      @direction_of_coordinate -= 1
    end
  end
  
  def determine_end_point
    case @direction_of_coordinate
    when 1 then @end_point[1] += @array[@index][1..3].to_i
    when 2 then @end_point[0] += @array[@index][1..3].to_i
    when 3 then @end_point[1] -= @array[@index][1..3].to_i
    when 4 then @end_point[0] -= @array[@index][1..3].to_i
    end
  end
  
  def calculate_length
    (@start_point[0] - @end_point[0]).abs + (@end_point[1] - @start_point[1]).abs
  end
  
  def read_array
    @index = 0
    while @index < @array.size
      if @array[@index].include?('R')
        turn_right
      end
      if @array[@index].include?('L')
        turn_left
      end
      determine_end_point
      @index += 1
    end
  end
   
  test = Test.new
  test.split_str
  test.read_array
  puts test.calculate_length
  
end 