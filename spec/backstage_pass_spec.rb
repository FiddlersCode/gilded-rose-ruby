require 'backstage_pass'

describe 'backstage_pass' do
  let(:pass) { BackstagePass.new("Beatles pass") }

  it 'can be created with a name' do
    expect(pass.name).to eq "Beatles pass"
  end

end
