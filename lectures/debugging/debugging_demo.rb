require 'pry-byebug'

def full_name(first_name, last_name)
  fname = first_name.capitalize
  # binding.pry
  lname = last_name.capitalize
  
  # last_name.chars.each do |letter|
  #   binding.pry
  #   puts "inside the loop"
  # end

  "#{fname} #{lname}"
end

puts full_name('matthew', 'militello')

# 1. gem install pry-byebug
# 2. require 'pry-byebug'
# 3. add binding.pry where you want to pause your code
# 4. when you run the code and it pauses, you can inspect variables
# 5. `next` to run the next line, `continue` to run until the end, or the next binding.pry or `exit`
# 6. remove the `require 'pry-byebug'` and `binding.pry` before committing
