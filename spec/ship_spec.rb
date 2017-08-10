require 'ship'

describe Ship do

  subject(:ship) { described_class.new(4) }

  describe '#length' do
    it 'returns the length of the ship' do
      expect(ship.length).to eq 4
    end
  end

  describe '#orientation' do
    it 'is vertical or horizontal' do
      expect(['horizontal', 'vertical']).to include ship.orientation
    end
  end

  describe '#next_horizontal_cell' do
    it 'returns a cell one to the right' do
      expect(ship.next_horizontal_cell([1,1])).to eq [1,2]
    end
  end

  describe '#next_vertical_cell' do
    it 'returns a cell one up' do
      expect(ship.next_vertical_cell([1,1])).to eq [2,1]
    end
  end

  describe '#calculate_position' do
    it 'populates the cells array with a series of coorinates in a horizontal line' do
      ship.stub(:orientation) { 'horizontal' }
      ship.stub(:starting_cell) { [1,1] }
      ship.calculate_position
      expect(ship.cells). to eq [[1, 1], [1,2], [1,3], [1,4]]
    end
    it 'populates the cells array with a series of coorinates in a vertical line' do
      ship.stub(:orientation) { 'vertical' }
      ship.stub(:starting_cell) { [3,4] }
      ship.calculate_position
      expect(ship.cells). to eq [[3,4], [4,4], [5,4], [6,4]]
    end
  end

  describe '#starting_cell' do
    it 'returns an array of two numbers between 0 and 9' do
      expect((0..9).to_a).to include ship.starting_cell[0]
      expect((0..9).to_a).to include ship.starting_cell[1]
    end
  end

end
