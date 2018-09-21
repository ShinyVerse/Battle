require 'game'

describe Game do
  let(:misty) { double( 'Misty', name: 'Misty', hp: 50, attack: true)}
  let(:ash) { double( 'Ash', name: 'Ash', hp: 0, attack: true) }
  let(:game) { described_class.new(ash, misty) }

  context '#game_over?' do
    it 'checks whether game has ended' do
      expect(game.game_over?).to eq true
    end
  end

  context '#attack' do
    it 'instructs the given player to attack' do
      expect(game.attack(0)).to eq true
    end
  end

  context '#winner_setter' do
    it 'should give the name of the player who still has hitpoints' do
      expect(game.winner_setter).to eq 'Misty'
    end
  end
end
