require_relative 'board'
require_relative 'player'


class Game
  def initialize
    @board = Board.new
    @player_one = Player.new
    @player_two = Player.new
  end

  def start
    @board.create_board
    @board.show_board
  end
end

practice_board = Board.new
practice_board.create_board
practice_board.update_board(5,"X")
practice_board.show_board