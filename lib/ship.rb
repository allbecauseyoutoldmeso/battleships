class Ship

  attr_reader :length, :name
  attr_accessor :cells

  def initialize(length, name)
    @length = length
    @name = name
  end

  def calculate_position
    self.cells = []
    orientation = random_orientation
    cell = random_starting_cell
    length.times do
      cells.push cell
      cell = next_cell(cell, orientation)
    end
  end

  def next_cell(cell, orientation)
    orientation == 'vertical' ? next_vertical_cell(cell) : next_horizontal_cell(cell)
  end

  def next_vertical_cell(cell)
    [cell[0]+1, cell[1]]
  end

  def next_horizontal_cell(cell)
    [cell[0], cell[1]+1]
  end

  def random_orientation
    ['horizonatal', 'vertical'].sample
  end

  def random_starting_cell
    [random_coordinate, random_coordinate]
  end

  def random_coordinate
    rand(9)
  end

end

class Carrier < Ship

  def initialize
    @length = 5
    @name = 'carrier'
  end

end

class Battleship < Ship

  def initialize
    @length = 4
    @name = 'battleship'
  end

end

class Cruiser < Ship

  def initialize
    @length = 3
    @name = 'cruiser'
  end

end

class Submarine < Ship

  def initialize
    @length = 3
    @name = 'submarine'
  end

end

class Destroyer < Ship

  def initialize
    @length = 2
    @name = 'destroyer'
  end

end
