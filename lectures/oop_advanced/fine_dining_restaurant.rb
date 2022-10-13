require_relative 'restaurant'

class FineDiningRestaurant < Restaurant
  def initialize(name, category, location, capacity, stars)
    super(name, category, location, capacity)
    @stars = stars # integer
  end

  def open?
    super || Time.now.hour >= 18 && Time.now.hour <= 22
  end
end
