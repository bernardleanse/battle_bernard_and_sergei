require 'player.rb'
describe Player do
  let(:player1) { Player.new("Bernard") }
  let(:player2) { Player.new("Sergei")}

  it 'returns its name' do
    expect(player1.name).to eq "Bernard"
  end

  it "returns its hp" do
    expect(player1.hp).to eq Player::DEFAULT_HP
  end


end
