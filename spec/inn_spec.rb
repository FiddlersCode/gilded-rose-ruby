require 'inn'
require 'backstage_pass'
require 'aged_brie'
require 'item'
require 'sulfura'
require 'simplecov'

describe Inn do
  let(:item) { Item.new("foo", 2, 6)}
  let(:products) { [] }
  let(:gilded_rose) { Inn.new }
  let(:brie) { Item.new("Aged Brie", 2, 0)}
  let(:sulfuras) { Item.new("Sulfuras, Hand of Ragnaros", 1, 5)}
  let(:pass) { Item.new("Backstage passes to a TAFKAL80ETC concert", 11, 1)}



  describe "#update_quality" do

  end
end
