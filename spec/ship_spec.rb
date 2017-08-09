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
      expect(ship.next_horizontal_cell([1,1])).to eq [2,1]
    end
  end

  describe '#next_vertical_cell' do
    it 'returns a cell one up' do
      expect(ship.next_horizontal_cell([1,1])).to eq [2,1]
    end
  end

end
