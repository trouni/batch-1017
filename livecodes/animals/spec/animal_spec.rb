require_relative '../animal'

describe Animal do
  describe '#initialize' do
    it 'returns an instance of Animal' do
      expect(Animal.new('Whiskey')).to be_an(Animal)
    end
  end

  describe '#name' do
    it 'returns the name of the animal' do
      whiskey = Animal.new('Whiskey')
      expect(whiskey.name).to eq('Whiskey')
    end
  end
  
  describe '#eat' do
    it 'returns "Whiskey eats a chicken"' do
      whiskey = Animal.new('Whiskey')
      expect(whiskey.eat('a chicken')).to eq("Whiskey eats a chicken")
    end
  end

  describe '.phyla' do
    it 'returns the four phyla of the animal kingdom' do
      expect(Animal.phyla).to eq([
        'worms',
        'squids',
        'sea worms',
        'ones with backend'
      ])
    end
  end
end