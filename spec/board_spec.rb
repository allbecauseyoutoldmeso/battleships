require 'board'

describe Board do

  subject(:board) { described_class.new }
  let(:battleship) { double :ship, cells: [[1,1],[2,1],[3,1],[4,1]] }


  describe '#grid' do
    it 'returns an array of ten by ten' do
      expect(board.grid).to eq [['','','','','','','','','',''],
                                ['','','','','','','','','',''],
                                ['','','','','','','','','',''],
                                ['','','','','','','','','',''],
                                ['','','','','','','','','',''],
                                ['','','','','','','','','',''],
                                ['','','','','','','','','',''],
                                ['','','','','','','','','',''],
                                ['','','','','','','','','',''],
                                ['','','','','','','','','','']]
    end
  end

  describe '#add_ship' do
    it 'marks a ship on the board' do
      board.add_ship(battleship)
      expect(board.grid).to eq [['','','','','','','','','',''],
                                ['','x','','','','','','','',''],
                                ['','x','','','','','','','',''],
                                ['','x','','','','','','','',''],
                                ['','x','','','','','','','',''],
                                ['','','','','','','','','',''],
                                ['','','','','','','','','',''],
                                ['','','','','','','','','',''],
                                ['','','','','','','','','',''],
                                ['','','','','','','','','','']]

    end
  end

  describe '#on_board?' do
    it 'returns true if the coordinates in an array are all on the board' do
      expect(board.on_board?([[1,1],[1,2],[1,3]])).to eq true
    end
    it 'returns false if the not all the coordinates are on the board' do
      expect(board.on_board?([[1,9],[1,10],[1,11]])).to eq false
    end
  end


end
