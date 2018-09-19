require 'player'

describe Player do
  let(:player) { described_class.new('Brock') }

  it 'should return a name' do
    expect(player.name).to eq "Brock"
  end

  it "has a reduce hitpoints method" do
    player.update_hp
    expect(player.hp).to eq 40
  end

end
