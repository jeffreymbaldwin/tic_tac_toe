class Board
  def initialize
    
  end

  def create_board
    @board = [

      [1,2,3],
      [4,5,6],
      [7,8,9]

    ]
  
  end

  def show_board
    @board.each_with_index do |row, index|
      puts row.join("  |  ")

      unless index == @board.length - 1
        puts "--------------"
      end
    end
  end

end

#board = Board.new

#board.show_board