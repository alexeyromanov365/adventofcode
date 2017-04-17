class Coordinate

  def step_coordinate(direction, step)
    case direction.to_s
      when "North" then
        distance(Map.x, Map.y += step)
      when "South" then
        distance(Map.x, Map.y -= step)
      when "West" then
        distance(Map.x -= step, Map.y)
      when "East" then
        distance(Map.x += step, Map.y)
    end
  end

  private

  def distance(x, y)
    x.abs + y.abs
  end

end


