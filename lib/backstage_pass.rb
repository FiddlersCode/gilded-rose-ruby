class BackstagePass
  attr_reader :name, :sell_in, :quality

  def initialize(name, sell_in, quality)
    @name = name
    @sell_in = sell_in
    @quality = quality
  end

  def update_product_quality(pass)
    lower_sell_in
  end

  private
  def lower_sell_in
    @sell_in -= 1
  end
end
