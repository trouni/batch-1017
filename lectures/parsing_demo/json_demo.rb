require "json"

# TODO - let's read/write data from beatles.json
filepath = "data/beatles.json"

# Serialized means a stringified data
serialized_beatles = File.read(filepath)
data = JSON.parse(serialized_beatles)

# Then we can access the data inside, by navigating through hashes/arrays
puts data['beatles'][2]['instrument'] # => Lead Guitar


beatles = { beatles: [
  {
    first_name: "John",
    last_name: "Lennon",
    instrument: "Guitar"
  },
  {
    first_name: "Paul",
    last_name: "McCartney",
    instrument: "Bass Guitar"
  },
  # etc...
]}

File.open('data/new_beatles.json', "wb") do |file|
  file.write(JSON.generate(beatles))
end