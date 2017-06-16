class BackstagePass
  attr_reader :name, :sell_in, :quality

  def initialize(name, sell_in, quality)
    @name = name
    @sell_in = sell_in
    @quality = quality
  end

  def update_product_quality(pass)
    if check_10
      @quality += 2
    elsif check_5
      @quality += 3
    else
      @quality +=1
    end

    lower_sell_in
  end

  private
  def lower_sell_in
    @sell_in -= 1
  end

  def check_10
    true if @sell_in > 5 && @sell_in < 11
  end

  def check_5
    true if @sell_in >= 0 && @sell_in < 6
  end
end
