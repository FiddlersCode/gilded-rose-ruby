require 'backstage_pass'

describe 'backstage_pass' do
  let(:pass) { BackstagePass.new("Beatles pass", 11, 3) }

  it 'can be created with a name' do
    expect(pass.name).to eq "Beatles pass"
  end

  it 'can be created with a sell_in' do
    expect(pass.sell_in).to eq 11
  end

  it 'can be created with a quality' do
    expect(pass.quality).to eq 3
  end

end
