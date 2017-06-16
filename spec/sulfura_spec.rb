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

  it 'can be instantiated with a max quality of 50' do
    expect {Sulfura.new("Sulfura", 3, 51)}.to raise_error("Max quality is 50.")
  end

  it 'can be instantiated with a minimu quality of 0' do
    expect { Sulfura.new("Sulfura", 3, -1)}.to raise_error("Minimum quality is 0.")
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
