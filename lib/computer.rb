require_relative 'ship'
require_relative 'board'

class Computer

attr_reader :board

def initialize
  @board = Board.new
end

def place_ships
  ships = [Carrier.new, Battleship.new, Battleship.new, Battleship.new, Battleship.new, Cruiser.new, Cruiser.new, Cruiser.new, Submarine.new, Submarine.new, Submarine.new, Destroyer.new, Destroyer.new, Destroyer.new, Destroyer.new, Destroyer.new]
  ships.each do |ship|
    place_ship(ship)
  end
end

def place_ship(ship)
  ship.calculate_position
  if board.on_board?(ship.cells) && board.unoccupied?(ship.cells)
    board.add_ship(ship)
  else
    place_ship(ship)
  end
end

end
