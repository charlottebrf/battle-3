require 'game'

describe Game do
  subject(:game) { described_class.new(:player_1, :player_2) }
  let(:player_1) { spy(:player_1) }
  let(:player_2) { spy(:player_2) }

  describe '#attacks' do
    it 'attacks a player' do
      game.attack(player_2)
      expect(player_2).to have_received(:receive_damage)
    end
  end

  describe "#switch_turns" do
    it "switches the players turns" do
      expect { game.attack(player_2) }.to change { game.current_turn }
    end
  end

end
