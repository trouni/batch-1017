require 'open-uri'
require 'nokogiri'

def scrape_top_5_urls
  serialized_html = URI.open('https://www.imdb.com/chart/top').read
  html_doc = Nokogiri::HTML(serialized_html) # returns a searchable Nokogiri HTML document

  html_doc.search('.titleColumn a').first(5).map do |element|
    "https://www.imdb.com#{element.attribute('href').value}"
  end
end

def scrape_movie_info(movie_url)
  # Returns a hash with the title, year, storyline, director and 3 cast members
  serialized_html = URI.open(movie_url, 'Accept-Language' => 'en').read
  doc = Nokogiri::HTML(serialized_html) # returns a searchable Nokogiri HTML document

  title = doc.search('.eKrKux').text.strip
  year = doc.search('.sc-8c396aa2-1').first.text.strip.to_i
  storyline = doc.search('.sc-16ede01-0').text.strip
  director = doc.search('.ipc-metadata-list-item__list-content-item.ipc-metadata-list-item__list-content-item--link').first.text.strip
  cast = doc.search('.sc-36c36dd0-1').first(3).map do |element|
    element.text.strip
  end

  {
    title: title,
    year: year,
    storyline: storyline,
    director: director,
    cast: cast
  }
end
