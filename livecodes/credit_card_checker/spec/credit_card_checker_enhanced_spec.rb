require_relative '../credit_card_checker_enhanced'

# credit_card_checker_enhanced(credit_card_number)

describe '#credit_card_checker_enhanced' do
  it "returns 'Valid credit card number' when given '4242 4242 4242 4242'" do
    actual = credit_card_checker_enhanced('4242 4242 4242 4242')
    expected = 'Valid Visa credit card number'
    expect(actual).to eq(expected)
  end

  it "returns 'Valid credit card number' when given '5555555555555555'" do
    actual = credit_card_checker_enhanced('5555555555555555')
    expected = 'Valid Mastercard credit card number'
    expect(actual).to eq(expected)
  end

  it "returns 'Valid credit card number' when given '5555-5555-5555-5555'" do
    actual = credit_card_checker_enhanced('5555-5555-5555-5555')
    expected = 'Valid Mastercard credit card number'
    expect(actual).to eq(expected)
  end

  it "returns 'Valid credit card number' when given '55555 555   55 555 554' (invalid Luhn check digit)" do
    actual = credit_card_checker_enhanced('55555 555   55 555 554')
    expected = 'Invalid credit card number'
    expect(actual).to eq(expected)
  end

  it "returns 'Valid credit card number' when given '53724 764   28 764 072' (invalid Luhn check digit)" do
    actual = credit_card_checker_enhanced('537 24 764   28 764 072')
    expected = 'Invalid credit card number'
    expect(actual).to eq(expected)
  end

  it "returns 'Valid credit card number' when given '4929332129229373' (invalid Luhn check digit)" do
    actual = credit_card_checker_enhanced('4929332129229373')
    expected = 'Invalid credit card number'
    expect(actual).to eq(expected)
  end

  it "returns 'Invalid credit card number' when given '42424242424242AB'" do
    actual = credit_card_checker_enhanced('42424242424242AB')
    expected = 'Invalid credit card number'
    expect(actual).to eq(expected)
  end

  it "returns 'Invalid credit card number' when given '424242424242'" do
    actual = credit_card_checker_enhanced('424242424242')
    expected = 'Invalid credit card number'
    expect(actual).to eq(expected)
  end

  it "returns 'Invalid credit card number' when given '55555555555555555555'" do
    actual = credit_card_checker_enhanced('55555555555555555555')
    expected = 'Invalid credit card number'
    expect(actual).to eq(expected)
  end

  it "returns 'Invalid credit card number' when given '492933212%229370'" do
    actual = credit_card_checker_enhanced('492933212%229370')
    expected = 'Invalid credit card number'
    expect(actual).to eq(expected)
  end
end