class Item
  attr_reader :name, :sell_in, :quality

  def initialize(name, sell_in, quality)
    @name = name
    @sell_in = sell_in
    @quality = quality
    errors
  end

  private
  def errors
    raise "Max quality is 50." if @quality > 50
    raise "Minimum quality is 0." if @quality < 0
  end
end
