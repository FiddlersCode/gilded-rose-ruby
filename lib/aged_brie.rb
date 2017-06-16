class AgedBrie
  attr_reader :name, :sell_in, :quality

  def initialize(name, sell_in, quality)
    @name = name
    @sell_in = sell_in
    @quality = quality
  end

  def update_product_quality(brie)
    lower_sell_in(brie)
    if @quality < 50
      @quality += 1
    end
  end

  private
  def lower_sell_in(brie)
    @sell_in -= 1
  end
end
