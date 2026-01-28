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
    play
  end
  def play
    loop do 
      puts "It's #{@current_player.marker}'s turn."
      turn
      if @board.winner?(@current_player.marker)
        puts "#{@current_player.marker} wins!"
        break
      elsif @board.draw?
        puts "It's a draw!"
        break
      else
        switch_player
      end
    end
  end

  def ask_for_position

    input = gets.chomp

    until input.match?(/^[1-9]$/)
      puts "Please enter a number between 1 and 9:"
      input = gets.chomp
    end

    input.to_i
  end


  def turn
    puts "What number will you place your marker?"

    position = ask_for_position

    until @board.update_board(position,@current_player.marker)
      puts "That spot is already taken"
      position = ask_for_position
    end
    
    puts "Marker Placed!"
    @board.show_board
  end

  def switch_player
    @current_player = (@current_player == @player_one) ? @player_two : @player_one
  end
end

