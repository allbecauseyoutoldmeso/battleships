require_relative 'ship'
require_relative 'board'

class Computer

attr_reader :ships, :board

def initialize
  @ships = [Ship.new(5), Ship.new(4), Ship.new(4), Ship.new(3), Ship.new(3), Ship.new(3), Ship.new(3), Ship.new(3), Ship.new(3), Ship.new(3), Ship.new(2), Ship.new(2), Ship.new(2), Ship.new(2), Ship.new(2)]
  @board = Board.new
end

def place_ships
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
