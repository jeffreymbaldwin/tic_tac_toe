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

  describe '#winner?'do
    it "returns true when same marker occupies 3 spaces in a row" do
      board = Board.new
      marker = "X"

      position = 1
      board.update_board(position, marker)

      position = 2
      board.update_board(position, marker)

      position = 3
      board.update_board(position, marker)

      result = board.winner?(marker)

      expect(result).to eq(true)
    end

    it "returns true when the same marker occupies 3 spaces in a column" do
      board = Board.new
      marker = "X"

      position = 1
      board.update_board(position, marker)

      position = 4
      board.update_board(position, marker)

      position = 7
      board.update_board(position, marker)

      result = board.winner?(marker)

      expect(result).to eq(true)
    end

    it "returns true when the same marker occupies 3 spaces in a diagonal" do
      board = Board.new
      marker = "X"

      position = 1
      board.update_board(position, marker)

      position = 5
      board.update_board(position, marker)

      position = 9
      board.update_board(position, marker)

      result = board.winner?(marker)

      expect(result).to eq(true)

    end

    it "returns false when the same marker does not occupy 3 spaces in a " do
      board = Board.new
      marker = "X"
      result = board.winner?(marker)
      expect(result).to eq(false)
    end
  end

  describe '#draw?'do
    it "returns true when the board has no integers left on it" do
      board = Board.new
      marker = "X"

      position = 1
      board.update_board(position, marker)
      position = 2
      board.update_board(position, marker)
      position = 3
      board.update_board(position, marker)
      position = 4
      board.update_board(position, marker)
      position = 5
      board.update_board(position, marker)
      position = 6
      board.update_board(position, marker)
      position = 7
      board.update_board(position, marker)
      position = 8
      board.update_board(position, marker)
      position = 9
      board.update_board(position, marker)

      result = board.draw?
      expect(result).to eq(true)
    end

    it "returns false when the board has any number of integers left on it" do
      board = Board.new

      result = board.draw?
      expect(result).to eq(false)
    end
  end

end


