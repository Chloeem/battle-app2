require_relative '../lib/game'

describe Game do

  let(:player_one) { double() }
  let(:player_two) { double() }
  
  subject(:game) { described_class.new(player_one, player_two) }

  describe '#attack' do
    it "attacks a player" do
        expect(player_one).to receive(:get_hit)
        game.attack(player_one)
    end
  end
  
  describe "2 player game" do
    it "has a player one" do
      expect(game.player_one).to eq(player_one)
    end

    it "has a player two" do
      expect(game.player_two).to eq(player_two)
    end
  end

end