require 'item'
class AgedBrie < Item
  def update_item_quality
    lower_sell_in
    @quality += 1 if @quality < 50
  end
end
