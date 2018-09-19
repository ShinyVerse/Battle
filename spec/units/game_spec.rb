require 'game'

describe Game do
  let(:misty) { double( 'Misty', name: 'Misty', hp: 50 )}
  let(:ash) { double( 'Ash', name: 'Ash', hp: 50) }
  let(:game) { described_class.new(ash, misty) }

  context '#game_over?' do
    it 'checks whether game has ended' do
      expect(game.game_over?).to eq false
    end
  end

  context '#attack' do
    it 'instructs the given player to attack' do
      expect(game.attack(0)).to eq true
    end
  end
end
