class Board

  attr_reader :grid

  def initialize
    @grid = []
    10.times { @grid.push Array.new(10, '')}
  end

  def add_ship(ship)
    ship.cells.each do |cell|
      puts cell[0]
      puts cell[1]
      grid[cell[0]][cell[1]] = 'x'
    end
  end

  def on_board?(cells)
    cells.all? { |cell| (0..9).to_a.include?(cell[0]) && (0..9).to_a.include?(cell[1]) }
  end

end
