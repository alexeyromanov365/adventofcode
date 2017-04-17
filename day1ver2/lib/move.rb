require_relative 'file/file_reader'

class Move

  def initialize(raw_move)
    @raw_move = raw_move
  end

  def direction=(direction)
    @direction = direction
  end

  def step=(step)
    @step = step
  end

  def direction
    @direction ||= @raw_move.scan(/[A-Za-z]+/)
  end

  def steps
    @steps ||= @raw_move.scan(/\d+/).join.to_i
  end

end