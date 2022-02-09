

describe Player do

subject(:tsuki) {Player.new('Tsuki')}
  it 'should return its name' do
    expect(subject.name).to eq 'Tsuki'
  end
end