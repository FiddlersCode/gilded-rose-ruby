class Inn
  attr_reader :products, :quality

  def initialize
    @products = []
  end

  def add_item(product)
    @products.push(product)
  end

  def update_quality
    @products.each do | product |
      product.update_product_quality(product)
    end
  end

end
