require 'ship'

describe Ship do

  subject(:ship) { described_class.new(4, 'battleship') }

  describe '#length' do
    it 'returns the length of the ship' do
      expect(ship.length).to eq 4
    end
  end

  describe '#next_horizontal_cell' do
    it 'returns a cell one to the right' do
      expect(ship.next_horizontal_cell([1,1,'intact'])).to eq [1,2,'intact']
    end
  end

  describe '#next_vertical_cell' do
    it 'returns a cell one up' do
      expect(ship.next_vertical_cell([1,1,'intact'])).to eq [2,1,'intact']
    end
  end

  describe '#calculate_position' do
    it 'populates the cells array with a series of coorinates in a horizontal line' do
      ship.stub(:random_orientation) { 'horizontal' }
      ship.stub(:random_starting_cell) { [1,1,'intact'] }
      ship.calculate_position
      expect(ship.cells). to eq [[1, 1,'intact'], [1,2,'intact'], [1,3,'intact'], [1,4,'intact']]
    end
    it 'populates the cells array with a series of coorinates in a vertical line' do
      ship.stub(:random_orientation) { 'vertical' }
      ship.stub(:random_starting_cell) { [3,4,'intact'] }
      ship.calculate_position
      expect(ship.cells). to eq [[3,4,'intact'], [4,4,'intact'], [5,4,'intact'], [6,4,'intact']]
    end
  end

  describe '#random_starting_cell' do
    it 'returns an array of two numbers between 0 and 9' do
      expect((0..9).to_a).to include ship.random_starting_cell[0]
      expect((0..9).to_a).to include ship.random_starting_cell[1]
    end
  end

end

describe Carrier do

  subject(:carrier) { described_class.new }

  it 'has a set length' do
    expect(carrier.length).to eq 5
  end

  it 'has a name' do
    expect(carrier.name).to eq 'carrier'
  end

  it '#calculate_cells creates five cell coordinates' do
    carrier.calculate_position
    expect(carrier.cells.length).to eq 5
  end

end
