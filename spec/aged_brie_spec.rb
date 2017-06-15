require 'aged_brie'

describe 'aged_brie' do
  let(:brie) { AgedBrie.new("Smelly cheese", 4, 2) }

  it 'can be created with a name' do
    expect(brie.name).to eq ("Smelly cheese")
  end

  it 'can be created with sell_in' do
    expect(brie.sell_in).to eq 4
  end

  it 'can be created with quality' do
    expect(brie.quality).to eq 2
  end
end
