require 'sulfura'

describe 'sulfura'do
  let(:sword) { Sulfura.new("Sulfura", 3, 3) }
  let(:gilded_rose) { Inn.new }
  let(:products) { gilded_rose.products }

  it 'can be created with a name' do
    expect(sword.name).to eq("Sulfura")
  end

  it 'can be created with sell_in' do
    expect(sword.sell_in).to eq 3
  end

  it 'can be created with quality' do
    expect(sword.quality).to eq 3
  end

  it 'can be added to products array' do
    gilded_rose.add_product(sword)
    expect(products[0].name).to eq "Sulfura"
  end

  it 'never decreases in quality' do
    gilded_rose.update_quality
    expect(sword.quality).to eq 3
  end
end
