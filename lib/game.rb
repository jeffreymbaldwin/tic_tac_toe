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
