require 'gilded_rose'

describe GildedRose do
  let(:item) { Item.new("foo", 2, 2)}
  let(:items) { [] }
  let(:gilded_rose) { GildedRose.new(items) }



  describe "#update_quality" do
    before :each do
      items << item
      gilded_rose.update_quality
    end

    it "does not change the name" do
      expect(items[0].name).to eq "foo"
    end

    it 'decreases sell_in by 1' do
      2.times { gilded_rose.update_quality }
      expect(items[0].sell_in).to eq -1
    end

  end
end
