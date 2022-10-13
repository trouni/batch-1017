require_relative 'restaurant'

class FastFoodRestaurant < Restaurant
  def initialize(name, category, location, capacity, prep_time)
    super(name, category, location, capacity)
    @prep_time = prep_time # integer (in min)
  end

  def open?
    true
  end
  
  def make_reservation(guest_name)
    puts "#{name} does not take reservations."
  end
end
