require_relative '../warthog'

describe Warthog do
  describe '#initialize' do
    it 'returns an instance of Warthog' do
      expect(Warthog.new('Whiskey')).to be_an(Warthog)
    end
  end

  describe '#name' do
    it 'returns the name of the warthog' do
      whiskey = Warthog.new('Whiskey')
      expect(whiskey.name).to eq('Whiskey')
    end
  end

  describe '#talk' do
    it 'returns "Whiskey grunts"' do
      whiskey = Warthog.new('Whiskey')
      expect(whiskey.talk).to eq("Whiskey grunts")
    end
  end
end