require 'item'
class Conjured < Item

  def update_item_quality
    lower_quality
    check_quality
    lower_sell_in
  end

  private
  def lower_sell_in
    @sell_in -= 1
  end

  def lower_quality
    @sell_in < 0 ? @quality -= 4 : @quality -=2
  end

  def check_quality
    @quality = 0 if @quality < 0
  end
end
