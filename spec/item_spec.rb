require 'item'

describe 'item' do
  item = Item.new("pen", 2, 2)

  it 'item can be created with a name' do
    expect(item.name).to eq("pen")
  end

  it 'item can be created with a sell_in' do
    expect(item.sell_in).to eq 2
  end

  it 'item can be created with a quality' do
    expect(item.quality).to eq 2
  end

end
