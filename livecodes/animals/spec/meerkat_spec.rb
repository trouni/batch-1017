require_relative '../meerkat'

describe Meerkat do
  describe '#initialize' do
    it 'returns an instance of Meerkat' do
      expect(Meerkat.new('Whiskey')).to be_an(Meerkat)
    end
  end

  describe '#name' do
    it 'returns the name of the meerkat' do
      whiskey = Meerkat.new('Whiskey')
      expect(whiskey.name).to eq('Whiskey')
    end
  end

  describe '#talk' do
    it 'returns "Whiskey barks"' do
      whiskey = Meerkat.new('Whiskey')
      expect(whiskey.talk).to eq("Whiskey barks")
    end
  end
end