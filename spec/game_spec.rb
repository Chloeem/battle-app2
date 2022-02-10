require_relative '../lib/game'

describe Game do

  subject(:game) { described_class.new}

  let(:player) { double() }

  describe '#attack' do
    it "attacks a player" do
        expect(player).to receive(:get_hit)
        game.attack(player)
    end
  end

end