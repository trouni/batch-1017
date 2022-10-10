def credit_card_checker_enhanced(credit_card_number)
  credit_card_number.delete!(' -')
  if credit_card_number =~ /^\d{16}$/ && valid_check_digit?(credit_card_number)
    case credit_card_number[0].to_i
    when 4 then "Valid Visa credit card number"
    when 5 then "Valid Mastercard credit card number"
    else 'Valid credit card number'
    end
  else
    "Invalid credit card number"
  end
end

def valid_check_digit?(number)
  # Get rid of the last digit
  payload = number[...-1]
  # Convert the payload to an array of numbers
  payload = payload.chars.map { |digit| digit.to_i }
  # Start from the rightmost digit
  # Moving left, double the value of every second digit (including the rightmost digit)
  # Sum the digits of the resulting value
  sum = 0
  payload.reverse.each_with_index do |digit, index|
    sum += index.even? ? digit * 2 : digit
  end
  # Calculate the check digit and compare to the original one
  check_digit = (10 - (sum % 10)) % 10
  p check_digit, number
  check_digit == number[-1].to_i
end