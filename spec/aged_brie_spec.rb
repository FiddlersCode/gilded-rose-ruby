require 'aged_brie'

describe 'aged_brie' do
  let(:brie) { AgedBrie.new("Smelly cheese", 4, 2) }
  let(:brie2) { AgedBrie.new("Smellier cheese", 4, 2)}
  let(:bries) { [] }

  it 'can be created with a name' do
    expect(brie.name).to eq ("Smelly cheese")
  end

  it 'can be created with sell_in' do
    expect(brie.sell_in).to eq 4
  end

  it 'can be created with quality' do
    expect(brie.quality).to eq 2
  end

  it 'can be added to bries array' do
    bries.push(brie, brie2)
    expect(bries[0].name).to eq "Smelly cheese"
    expect(bries[1].name).to eq "Smellier cheese"
  end

  # context 'quality' do
  #   it 'aged brie increases in quality with age' do
  #     bries.push(brie)
  #     bries.update_quality
  #     expect(brie.quality).to eq 1
  #   end
  # end
end
