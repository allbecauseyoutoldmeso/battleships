class Ship

  attr_reader :length
  attr_accessor :cells

  def initialize(length)
    @length = length
    # @cells = []
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

  attr_accessor :name

  def initialize
    @length = 5
    @name = 'carrier'
  end

end
