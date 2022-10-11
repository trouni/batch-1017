require "csv"

# TODO - let's read/write data from beatles.csv
filepath = "data/beatles.csv"

# CSV.foreach(filepath, headers: :first_row) do |row|
#   # puts "#{row[0]} #{row[1]} plays the #{row[2]}"
#   puts "#{row['First Name']} #{row['Last Name']} plays the #{row['Instrument']}"
# end

beatles = [
  ["John", "Lennon", "Guitar"],
  ["Paul", "McCartney", "Bass Guitar"],
  ["George","Harrison","Lead Guitar"]
]

CSV.open("data/new_beatles.csv", "wb") do |csv|
  csv << ["First Name", "Last Name", "Instrument"]
  beatles.each do |beatle|
    csv << beatle
  end
end
