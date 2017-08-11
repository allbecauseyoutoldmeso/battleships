require 'computer'

describe Computer do

  subject(:computer) { described_class.new }

  describe '#place_ships' do
    it 'places all the ships on the board without overlaps' do
      computer.place_ships
      tally = 0
      computer.board.grid.each { |row| tally += row.count('x') }
      expect(tally).to eq 49
    end
  end


end
