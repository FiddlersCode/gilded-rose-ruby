require 'product'

describe 'product' do
  let(:product) { Product.new("pen", 2, 2) }
  let(:product2) { Product.new("horse", 0, 20)}
  let(:gilded_rose) { Inn.new }
  let(:products) { gilded_rose.products}

  context 'product creation' do
    it 'product can be created with a name' do
      expect(product.name).to eq("pen")
    end

    it 'product can be created with a sell_in' do
      expect(product.sell_in).to eq 2
    end

    it 'product can be created with a quality' do
      expect(product.quality).to eq 2
    end

    it 'can be added to products array' do
      gilded_rose.add_product(product)
      expect(products[0].name).to eq "pen"
    end
  end


  context 'sell_in' do
    it 'decreases sell_in by 1' do
      gilded_rose.add_product(product)
      gilded_rose.update_quality
      expect(products[0].sell_in).to eq 1
    end
  end

  context 'quality' do
    before :each do
      gilded_rose.add_product(product)
      gilded_rose.add_product(product2)
      gilded_rose.update_quality
    end

    it 'decreases the quality by 1' do
      expect(products[0].quality).to eq 1
    end

    it 'quality decreases 2x when sell_in < 0' do
      expect(products[1].quality).to eq 18
    end

    it 'cannot have a negative quality' do
      2.times { gilded_rose.update_quality }
      expect(products[0].quality).to eq 0
    end
  end

end
