require_relative '../credit_card_checker'

# credit_card_checker(credit_card_number)

describe '#credit_card_checker' do
  it "returns 'Valid credit card number' when given '4929332129229370'" do
    actual = credit_card_checker('4929332129229370')
    expected = 'Valid Visa credit card number'
    expect(actual).to eq(expected)
  end

  it "returns 'Valid credit card number' when given '4929 3321 2922 9370'" do
    actual = credit_card_checker('4929 3321 2922 9370')
    expected = 'Valid Visa credit card number'
    expect(actual).to eq(expected)
  end

  it "returns 'Valid credit card number' when given '4929-3321-2922-9370'" do
    actual = credit_card_checker('4929-3321-2922-9370')
    expected = 'Valid Visa credit card number'
    expect(actual).to eq(expected)
  end

  it "returns 'Valid credit card number' when given '53724 764   28 764 071'" do
    actual = credit_card_checker('537 24 764   28 764 071')
    expected = 'Valid Mastercard credit card number'
    expect(actual).to eq(expected)
  end

  it "returns 'Invalid credit card number' when given '53724764287640AB'" do
    actual = credit_card_checker('53724764287640AB')
    expected = 'Invalid credit card number'
    expect(actual).to eq(expected)
  end

  it "returns 'Invalid credit card number' when given '537247642876'" do
    actual = credit_card_checker('537247642876')
    expected = 'Invalid credit card number'
    expect(actual).to eq(expected)
  end

  it "returns 'Invalid credit card number' when given '49293321292293701234'" do
    actual = credit_card_checker('49293321292293701234')
    expected = 'Invalid credit card number'
    expect(actual).to eq(expected)
  end

  it "returns 'Invalid credit card number' when given '492933212%229370'" do
    actual = credit_card_checker('492933212%229370')
    expected = 'Invalid credit card number'
    expect(actual).to eq(expected)
  end
end