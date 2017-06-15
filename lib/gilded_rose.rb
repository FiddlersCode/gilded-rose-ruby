class GildedRose

  def initialize(items)
    @items = items
    # @passes = []
    # @brie = []
    # @sulfuras = []
  end

  def update_quality(item)
    decrease_sell_in(item)
  end

  def decrease_sell_in(item)
    item.sell_in -= 1
  end
end

class Item
  attr_accessor :name, :sell_in, :quality

  def initialize(name, sell_in, quality)
    @name = name
    @sell_in = sell_in
    @quality = quality
  end

  def to_s()
    "#{@name}, #{@sell_in}, #{@quality}"
  end
end
