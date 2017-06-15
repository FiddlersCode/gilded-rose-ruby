require 'gilded_rose'

describe GildedRose do
  let(:item) { Item.new("foo", 2, 6)}
  let(:items) { [] }
  let(:gilded_rose) { GildedRose.new(items) }
  let(:brie) { Item.new("Aged Brie", 2, 0)}
  let(:sulfuras) { Item.new("Sulfuras, Hand of Ragnaros", 1, 5)}
  let(:pass) { Item.new("Backstage passes to a TAFKAL80ETC concert", 11, 1)}



  describe "#update_quality" do
    before :each do
      items.push(item, brie, sulfuras, pass)
      gilded_rose.update_quality
    end

    it "does not change the name" do
      expect(items[0].name).to eq "foo"
    end

    it 'decreases sell_in by 1' do
      2.times { gilded_rose.update_quality }
      expect(items[0].sell_in).to eq -1
    end

    it 'quality degrades twice as fast after sell_in < 0' do
       2.times { gilded_rose.update_quality }
       expect(items[0].quality).to eq 2
    end

    it 'cannot have a negative quality' do
      4.times { gilded_rose.update_quality }
      expect(items[0].quality).to eq 0
    end

    it 'cannot have a quality higher than 50' do
      50.times { gilded_rose.update_quality }
      expect(items[1].quality).to eq 50
    end

    context 'aged brie' do
      it 'aged brie increases in quality with age' do
        expect(items[1].name).to eq "Aged Brie"
        expect(items[1].quality).to eq 1
      end
    end

    context 'sulfuras' do
      it 'cannot degrade in quality' do
        expect(items[2].name).to eq "Sulfuras, Hand of Ragnaros"
        expect(items[2].quality).to eq 5
      end
    end

    context 'backstage passes' do
      it 'increases in quality by 2 with =< 10 days before concert' do
        expect(items[3].name).to eq "Backstage passes to a TAFKAL80ETC concert"
        expect(items[3].quality).to eq 2
      end
    end

  end
end
