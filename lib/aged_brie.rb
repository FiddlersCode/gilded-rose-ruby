require 'item'
class AgedBrie < Item
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
