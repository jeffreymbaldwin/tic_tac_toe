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

  def winner?(marker)
    lines = []
    
    @board.each do |row|
      lines << row
    end

    @board.transpose.each do |column|
      lines << column
    end

    diag1 = [@board[0][0], @board[1][1], @board[2][2]]
    diag2 = [@board[0][2], @board[1][1], @board[2][0]]

    lines << diag1
    lines << diag2

    lines.any? do |line|
      line.all? do |element|
        element == marker
      end
    end
  end

  def draw?
    flat_board = @board.flatten

    flat_board.none? do |element|
      element.is_a?(Integer)
    end

  end
end
