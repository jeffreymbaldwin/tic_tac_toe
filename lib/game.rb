require_relative 'board'
require_relative 'player'


class Game
  def initialize
    @board = Board.new
    @player_one = Player.new("X")
    @player_two = Player.new("O")
    @current_player = @player_one

  end

  def start
    @board.create_board
    @board.show_board
    #@board.update_board(5,"X")
    #@board.show_board
    turn
  end

  def turn
    puts "What number will you place your marker?"
    position = gets.chomp.to_i
    currentmarker = @current_player.marker
    while @board.update_board(position,currentmarker) == false
      puts "That spot is already taken"
      position = gets.chomp.to_i
    end
    
    puts "Marker Placed!"
    @board.show_board
  end
end

