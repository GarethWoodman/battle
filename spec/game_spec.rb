describe Game do
  subject(:game) { described_class.new(player_1, player_2) }
  let(:player_1) { double :player }
  let(:player_2) { double :player }

  describe '#attack' do
    it 'deducts 10 points off the other player' do
      expect(player_2).to receive(:recieve_damage)
      #call attack to invoke method on player_2 object
      game.attack(player_2)
    end
  end

  describe '#player_1 & #player_2' do
    it 'checks that it has two player instances' do
      expect(game.player_1).to eq player_1
      expect(game.player_2).to eq player_2
    end
  end
end
