class FileReader

  FILEPATH = 'file/key_string'.freeze

  attr_reader :raw_moves, :readed_file

  def initialize
    @readed_file = File.read(FILEPATH)
  end

  def raw_moves
    @raw_moves ||= readed_file.split(', ')
  end

  def moves
    @moves = raw_moves.map { |el| Move.new(el) }
  end

end
