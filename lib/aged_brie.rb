require 'item'
class AgedBrie < Item
  def update_item_quality(brie)
    lower_sell_in(brie)
    @quality += 1 if @quality < 50
  end

  private
  def lower_sell_in(brie)
    @sell_in -= 1
  end

end
