require 'player'

describe Player do
  let(:player) { described_class.new('Brock') }

  it 'should return a name' do
    expect(player.name).to eq "Brock"
  end

  it 'should take away randomized hitpoints' do
    srand(4000)
    expect(player.update_hp).to eq 37
  end

end
