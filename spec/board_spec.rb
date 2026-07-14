require_relative "../lib/board"

RSpec.describe Board do
  describe '#update_board'do
    it "returns true when placing a marker in an available position" do
      board = Board.new
      position = 3
      marker = "X"
    
      result = board.update_board(position, marker)

      expect(result).to eq(true)
    end

    it "returns false when placing a marker in an unavailable position" do
      board = Board.new
      position = 3
      marker = "X"
      board.update_board(position, marker)

      result = board.update_board(position, marker)
      
      expect(result).to eq(false)
      
    end


  end
end


