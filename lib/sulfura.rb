require 'product'
class Sulfura < Product

  private
  def errors
    raise "Max quality is 50." if @quality > 50
    raise "Minimum quality is 0." if @quality < 0
  end
end
