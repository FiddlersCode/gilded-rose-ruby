require 'item'

describe 'item' do
  let(:item) { Item.new("pen", 2, 2) }
  let(:gilded_rose) { Inn.new }
  let(:products) { gilded_rose.products}

  it 'item can be created with a name' do
    expect(item.name).to eq("pen")
  end

  it 'item can be created with a sell_in' do
    expect(item.sell_in).to eq 2
  end

  it 'item can be created with a quality' do
    expect(item.quality).to eq 2
  end

  it 'can be added to products array' do
    gilded_rose.add_product(item)
    expect(products[0].name).to eq "pen"
  end

  context 'sell_in' do
    it 'decreases sell_in by 1' do
      gilded_rose.add_product(item)
      gilded_rose.update_quality
      expect(products[0].sell_in).to eq 1
    end
  end

  context 'quality' do
    before :each do
      gilded_rose.add_product(item)
      gilded_rose.update_quality
    end

    it 'decreases the quality by 1' do
      expect(products[0].quality).to eq 1
    end
  end

end
