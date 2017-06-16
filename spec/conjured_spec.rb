require 'conjured'

describe 'conjured' do
  let(:rabbit) { Conjured.new("Rabbit", 2, 2)}
  let(:rabbit2) { Conjured.new("Rabbit2", -1, 8)}
  let(:gilded_rose) { Inn.new }
  let(:products) { gilded_rose.products }

  context 'creation' do
    it 'conjured can be created with a name' do
      expect(rabbit.name).to eq("Rabbit")
    end

    it 'conjured can be created with a sell_in' do
      expect(rabbit.sell_in).to eq 2
    end

    it 'conjured can be created with quality' do
      expect(rabbit.quality).to eq 2
    end

    it 'can be added to the products array' do
      gilded_rose.add_product(rabbit)
      expect(products[0].name).to eq 'Rabbit'
    end

    it 'can be instantiated with a max quality of 50' do
      expect { Conjured.new("Rabbit", 10, 51)}.to raise_error "Max quality is 50."
    end
  end

  context 'sell_in' do
    before :each do
      gilded_rose.add_product(rabbit)
      gilded_rose.update_quality
    end

    it 'lowers sell_in by 1' do
      expect(rabbit.sell_in).to eq 1
    end
  end

  context 'quality' do
    before :each do
      gilded_rose.add_product(rabbit)
      gilded_rose.add_product(rabbit2)
      gilded_rose.update_quality
    end

    it 'lowers quality by 2' do
      expect(products[0].quality).to eq 0
    end

    it 'lowers quality by 4 when sell_in < 0' do
      expect(products[1].quality).to eq 4
    end

    it 'cannot have a negative quality' do
      gilded_rose.update_quality
      expect(products[0].quality).to eq 0
    end
  end


end
