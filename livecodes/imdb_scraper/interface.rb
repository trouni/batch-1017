require_relative 'scraper'
require 'yaml'

movie_urls = scrape_top_5_urls

movies = movie_urls.map do |movie_url|
  scrape_movie_info(movie_url)
end

File.open('movies.yml', 'wb') do |file|
  file.write(movies.to_yaml)
end
