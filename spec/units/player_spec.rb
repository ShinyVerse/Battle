require 'player'

describe Player do
  let(:player) { described_class.new('Brock') }

  it 'should return a name' do

    expect(player.name).to eq "Brock"
  end
end
