def credit_card_checker(credit_card_number)
  # TODO: Implement credit card checker method
  # should have 16 digits (dashes and spaces are acceptable)

  # 1. Remove spaces and dashes
  # credit_card_number.gsub!(/[ -]/, "")
  credit_card_number.delete!(' -')

  # 2. Write a regular expression that matches a valid CC number  
  # 3. Check if the credit_card_number matches the regex (match? OR =~ OR match)
  if credit_card_number =~ /^\d{16}$/
    case credit_card_number[0].to_i
    when 4 then "Valid Visa credit card number"
    when 5 then "Valid Mastercard credit card number"
    else 'Valid credit card number'
    end

    # if credit_card_number.start_with?('4')
    #   "Valid Visa credit card number"
    # else
    #   "Valid Mastercard credit card number"
    # end
  else
    "Invalid credit card number"
  end
end