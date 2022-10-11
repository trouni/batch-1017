require "json"
require "open-uri"

# TODO - Let's fetch name and bio from a given GitHub username
def get_gh_user_info(username)
  url = "https://api.github.com/users/#{username}"

  serialized_user = URI.open(url).read # downloads a JSON as a string
  user = JSON.parse(serialized_user) # converts the string into an actual hash

  puts "#{user['name']} is located in #{user['location']} and has #{user['followers']} followers."
end

get_gh_user_info('ssaunier')