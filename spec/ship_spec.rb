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

end
