require 'item'
class AgedBrie < Item
  def update_item_quality
    lower_sell_in
    @quality += 1 if @quality < 50
  end

  private
  def lower_sell_in
    @sell_in -= 1
  end

end
