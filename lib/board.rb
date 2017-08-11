class Board

  attr_reader :grid, :ships

  def initialize
    @grid = []
    10.times { @grid.push Array.new(10, '')}
    @ships = []
  end

  def add_ship(ship)
    ships.push(ship)
    ship.cells.each do |cell|
      grid[cell[0]][cell[1]] = 'x'
    end
  end

  def on_board?(cells)
    cells.all? { |cell| (0..9).to_a.include?(cell[0]) && (0..9).to_a.include?(cell[1]) }
  end

  def unoccupied?(cells)
    # cells.all? { |cell| grid[cell[0]][cell[1]] != 'x' }
    cells.all? { |cell| ships.all? { |ship| ! ship.cells.include?(cell) } }
  end

end
