require_relative '../citizen'

describe Citizen do
  describe '#can_vote?' do
    it 'returns true when the citizen is older than 18' do
      citizen = Citizen.new('savi', 'wewala', 18)
      expect(citizen.can_vote?).to eq(true)
    end

    it 'returns false when the citizen is younger than 18' do
      citizen = Citizen.new('savi', 'wewala', 17)
      expect(citizen.can_vote?).to eq(false)
    end
  end

  describe '#full_name' do
    it 'returns "Savi Wewala" for our citizen' do
      citizen = Citizen.new('savi', 'wewala', 17)
      expect(citizen.full_name).to eq("Savi Wewala")
    end
  end
end