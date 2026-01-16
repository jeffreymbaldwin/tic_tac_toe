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

  def update_board(position, marker)
    zero_based = position - 1
    row_index = zero_based / 3
    col_index = zero_based % 3

    current_value = @board[row_index][col_index]
    return false if current_value.is_a?(String)

    @board[row_index][col_index] = marker
    true
    

  end

end

#board = Board.new

#board.show_board