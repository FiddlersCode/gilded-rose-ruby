class Conjured
  attr_reader :name, :sell_in, :quality

  def initialize(name, sell_in, quality)
    @name = name
    @sell_in = sell_in
    @quality = quality
  end

  def update_product_quality(conjured)
    @quality -= 2
    lower_sell_in(conjured)
  end

  private
  def lower_sell_in(conjured)
    @sell_in -= 1
  end
end
