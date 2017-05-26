require 'game'

describe Game do
  subject(:game) { described_class.new }
  let(:player_2) { double(:player_2) }

  describe '#attacks' do
    it 'attacks a player' do
      expect(player_2).to receive(:reduce_hit_points)
      game.attack(player_2)
    end
  end

end
