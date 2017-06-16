require 'aged_brie'
require 'inn'

describe 'aged_brie' do
  let(:brie) { AgedBrie.new("Smelly cheese", 4, 2) }
  let(:brie2) { AgedBrie.new("Smellier cheese", 4, 2)}
  let(:brie3) { AgedBrie.new("Smelliest cheese", 4, 50)}
  let(:gilded_rose) { Inn.new }
  let(:products) { gilded_rose.products }

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
    gilded_rose.add_item(brie)
    expect(gilded_rose.products[0].name).to eq "Smelly cheese"
  end

  context 'quality' do
    before :each do
      gilded_rose.add_item(brie)
      gilded_rose.add_item(brie2)
    end

    it 'responds to update_quality' do
      expect(gilded_rose).to respond_to(:update_quality)
    end

    it 'aged brie increases in quality with age' do
      gilded_rose.update_quality
      expect(products[0].quality).to eq 3
      expect(products[1].quality).to eq 3
    end

    it 'has a max quality of 50' do
      gilded_rose.add_item(brie3)
      gilded_rose.update_quality
      expect(products[2].quality).to eq 50
    end
  end
end
