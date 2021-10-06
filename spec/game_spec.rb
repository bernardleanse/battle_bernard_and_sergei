require 'game'

describe Game do
  describe "#attack" do
    let(:player2) { double(:player, name: "Bernard", hp: 100 )}
    it "reduces the hp of a player by 10" do
      subject.attack(player2)
      allow(player2).to receive(:hp).with
      expect(player2.hp).to eq 90
    end
  end
end