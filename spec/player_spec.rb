require 'player'

describe Player do
  subject(:dog) { described_class.new ("Dog")}

  describe '#name' do
    it 'returns its name' do
      expect(dog.name).to eq "Dog"
    end
  end
end
