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

  describe "#attack" do
    it "reduces the hp of a player by 10" do
      player1.attack(player2)
      expect(player2.hp).to eq 90
    end
  end
end
