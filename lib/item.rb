class Item
  attr_accessor :name, :sell_in, :quality

  def initialize(name, sell_in, quality)
    @name = name
    @sell_in = sell_in
    @quality = quality
  end

  def update_product_quality(item)
    lower_sell_in
    @quality -= 1
  end

  def to_s()
    "#{@name}, #{@sell_in}, #{@quality}"
  end

  private

  def lower_sell_in
    @sell_in -= 1
  end
end
