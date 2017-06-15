class AgedBrie
  attr_reader :name, :sell_in, :quality

  def initialize(name, sell_in, quality)
    @name = name
    @sell_in = sell_in
    @quality = quality
    @bries = []
  end

  def update_quality(bries)
    @bries = bries
  end
end
