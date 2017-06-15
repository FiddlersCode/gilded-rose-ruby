require 'gilded_rose'

describe GildedRose do
  let(:item) { Item.new("foo", 0, 0)}
  let(:items) { [] }
  let(:gilded_rose) { GildedRose.new(items) }

  before :each do
    items << item
  end

  describe "#update_quality" do
    it "does not change the name" do
      gilded_rose.update_quality
      expect(items[0].name).to eq "foo"
    end
  end

end
