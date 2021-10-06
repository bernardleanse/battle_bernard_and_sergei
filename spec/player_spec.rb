require 'player.rb'
describe Player do
  let(:player) { Player.new("Bernard") }
  it 'returns its name' do
    expect(player.name).to eq "Bernard"
  end

  it "returns its hp" do
    expect(player.hp).to eq Player::DEAFULT_HP
  end
end
