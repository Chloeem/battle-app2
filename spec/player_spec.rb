describe Player do
  subject(:tsuki) { Player.new('Tsuki') }
  subject(:luna) { Player.new('Luna') }

  it 'should return its name' do
    expect(tsuki.name).to eq 'Tsuki'
  end

  describe '#hit_points' do
    it 'returns the hit points' do
      expect(tsuki.hit_points).to eq described_class::DEFAULT_HP
    end
  end

  describe '#get_hit' do
    it 'reduces players hit points' do
      expect { tsuki.get_hit }.to change { tsuki.hit_points }.by(-10)
    end
  end
end