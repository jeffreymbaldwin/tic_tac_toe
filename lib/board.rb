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
#write a formula to change a number position to X or O
  def update_board(position, marker)
    zero_based = position - 1
    row_index = zero_based / 3
    col_index = zero_based % 3
    @board[row_index][col_index] = marker
  end

end

#board = Board.new

#board.show_board