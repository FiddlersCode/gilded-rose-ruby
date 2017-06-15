require 'sulfura'

describe 'sulfura'do
  let(:sword) { Sulfura.new("Sulfura", 3, 3) }

  it 'can be created with a name' do
    expect(sword.name).to eq("Sulfura")
  end

  it 'can be created with sell_in' do
    expect(sword.sell_in).to eq 3
  end

  it 'can be created with quality' do
    expect(sword.quality).to eq 3
  end
end
