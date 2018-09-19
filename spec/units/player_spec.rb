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

  it "raises an error if the player is hit when dead" do
    5.times { player.update_hp }
    expect { player.update_hp }.to raise_error "They're already dead!"
  end
end
