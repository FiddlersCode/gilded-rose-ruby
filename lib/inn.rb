class Inn
  attr_reader :items

  def initialize
    @items = []
  end

  def add_item(item)
    @items.push(item)
  end

  def update_quality
    @items.each do | item |
      item.update_item_quality(item)
    end
  end

end
