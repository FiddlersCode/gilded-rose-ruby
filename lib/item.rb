class Item
  attr_accessor :name, :sell_in, :quality

  def initialize(name, sell_in, quality)
    @name = name
    @sell_in = sell_in
    @quality = quality
    errors
  end

  def update_product_quality(item)
    lower_sell_in
    check_sell_in ? @quality -= 2 : @quality -= 1
    check_quality
  end

  def to_s()
    "#{@name}, #{@sell_in}, #{@quality}"
  end

  private

  def lower_sell_in
    @sell_in -= 1
  end

  def check_sell_in
    true if sell_in < 0
  end

  def check_quality
    @quality = 0 if @quality < 0
  end

  def errors
    raise "Max quality is 50." if @quality > 50
    raise "Minimum quality is 0." if @quality < 0
  end
end
