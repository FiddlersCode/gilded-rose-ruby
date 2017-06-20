require 'item'
class Product < Item
  def update_item_quality
    lower_sell_in
    check_sell_in ? @quality -= 2 : @quality -= 1
    check_quality
  end

  def to_s()
    "#{@name}, #{@sell_in}, #{@quality}"
  end

  private
  def check_sell_in
    true if sell_in < 0
  end

  def check_quality
    @quality = 0 if @quality < 0
  end
end
