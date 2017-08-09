class Board

  attr_reader :grid

  def initialize
    @grid = []
    10.times { @grid.push Array.new(10, [])}
  end

end
