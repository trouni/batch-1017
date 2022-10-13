require_relative '../lion'

describe Lion do
  describe '#initialize' do
    it 'returns an instance of Lion' do
      expect(Lion.new('Whiskey')).to be_an(Lion)
    end
  end

  describe '#name' do
    it 'returns the name of the lion' do
      whiskey = Lion.new('Whiskey')
      expect(whiskey.name).to eq('Whiskey')
    end
  end

  describe '#talk' do
    it 'returns "Whiskey roars"' do
      whiskey = Lion.new('Whiskey')
      expect(whiskey.talk).to eq("Whiskey roars")
    end
  end

  describe '#eat' do
    it 'returns “Simba eats a gazelle. Law of the Jungle!”' do
      simba = Lion.new('Simba')
      expect(simba.eat('a gazelle')).to eq("Simba eats a gazelle. Law of the Jungle!")
    end
  end
end