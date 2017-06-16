require 'product'
class AgedBrie < Product
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

  def errors
    raise "Max quality is 50." if @quality > 50
    raise "Minimum quality is 0." if @quality < 0
  end
end
