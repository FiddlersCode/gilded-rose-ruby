class Inn
  attr_reader :bries, :products

  def initialize
    @products = []
  end

  def add_item(item)
    @products.push(item)
  end

  def update_quality(products)
    products.each do | item |
      item.update_product_quality(self)
    end
  end

end
