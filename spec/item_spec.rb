require 'item'

describe 'item' do
  let(:item) { Item.new("pen", 2, 2) }
  let(:gilded_rose) { Inn.new }
  let(:products) { gilded_rose.products}

  it 'item can be created with a name' do
    expect(item.name).to eq("pen")
  end

  it 'item can be created with a sell_in' do
    expect(item.sell_in).to eq 2
  end

  it 'item can be created with a quality' do
    expect(item.quality).to eq 2
  end

  it 'can be added to products array' do
    gilded_rose.add_product(item)
    expect(products[0].name).to eq "pen"
  end

end
