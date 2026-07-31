require_relative "../lib/game"

RSpec.describe Game do
  describe '#ask_for_position'
    it "returns an integer when the input is valid" do
      game = Game.new

      allow(game).to receive(:gets).and_return("5\n")

      result = game.ask_for_position

      expect(result).to eq(5)
    end

    it "repromps for a new input when the input is invalid until the new input is valid" do
      game = Game.new
      allow(game).to receive(:gets).and_return("icecream\n", "5\n") 
      result = game.ask_for_position
      expect(result).to eq(5)
    end
end