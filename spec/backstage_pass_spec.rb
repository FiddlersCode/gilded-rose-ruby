require 'backstage_pass'

describe 'backstage_pass' do
  let(:pass) { BackstagePass.new("Beatles pass", 11, 3) }
  let(:pass2) { BackstagePass.new("Beatles pass2", 10, 3)}
  let(:pass3) { BackstagePass.new("Beatles pass3", 5, 3)}
  let(:pass4) {BackstagePass.new("Beatles pass4", 0, 10)}
  let(:pass5) { BackstagePass.new("Beatles pass5", 2, 50)}
  let(:gilded_rose) { Inn.new }
  let(:items) { gilded_rose.items }

  context 'creation' do
    it 'can be created with a name' do
      expect(pass.name).to eq "Beatles pass"
    end

    it 'can be created with a sell_in' do
      expect(pass.sell_in).to eq 11
    end

    it 'can be created with a quality' do
      expect(pass.quality).to eq 3
    end

    it 'can be created with a max quality of 50' do
      expect { BackstagePass.new("Pass", 10, 51)}.to raise_error("Max quality is 50.")
    end

    it 'can be created with a minimum quality of 0' do
      expect { BackstagePass.new("Pass", 10, -1)}.to raise_error("Minimum quality is 0.")
    end
  end

  context 'sell_in' do
    before :each do
      gilded_rose.add_item(pass)
      gilded_rose.update_quality
    end

    it 'decreases the sell_in by 1' do
      expect(items[0].sell_in).to eq 10
    end
  end

  context 'quality' do
    before :each do
      gilded_rose.add_item(pass)
      gilded_rose.add_item(pass2)
      gilded_rose.add_item(pass3)
      gilded_rose.add_item(pass4)
      gilded_rose.add_item(pass5)
      gilded_rose.update_quality
    end
    it 'increases in quality by 1 with >10 days before concert' do
      expect(items[0].quality).to eq 4
    end

    it 'increases in quality by 2 with <= 10 days before concert' do
      expect(items[1].quality).to eq 5
    end

    it 'increases in quality by 3 with <= 5 days before concert' do
      expect(items[2].quality).to eq 6
    end

    it 'has 0 quality after concert' do
      expect(items[3].quality).to eq 0
    end

    it 'has a maximum quality of 50' do
      expect(items[4].quality).to eq 50
    end
  end
end
