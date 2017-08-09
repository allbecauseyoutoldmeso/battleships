class Ship

  attr_reader :length, :orientation

  def initialize(length)
    @orientation = ['vertical', 'horizontal'].sample
    @length = length
  end

  def assume_position

  end

  def next_horizontal_cell(cell)
    [cell[0]+1, cell[1]]
  end

  def next_vertical_cell(cell)
    [cell[0], cell[1]+1]
  end

  def starting_cell
    [random_coordinate, random_coordinate]
  end

  def random_coordinate
    rand(1..10)
  end

end
