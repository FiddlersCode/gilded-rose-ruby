require 'product'
class Conjured < Product

  def update_product_quality(conjured)
    lower_quality
    check_quality
    lower_sell_in(conjured)
  end

  private
  def lower_sell_in(conjured)
    @sell_in -= 1
  end

  def lower_quality
    @sell_in < 0 ? @quality -= 4 : @quality -=2
  end

  def check_quality
    @quality = 0 if @quality < 0
  end

  def errors
    raise "Max quality is 50." if @quality > 50
    raise "Minimum quality is 0." if @quality < 0
  end
end
