require_relative 'chef'

class Restaurant
  attr_reader :name, :category, :location, :capacity, :chef

  def self.categories
    %w[italian japanese mexican burgers ramen]
  end

  def initialize(name, category, location, capacity, chef_name = nil)
    @name = name # string
    @category = category # string
    @location = location # string
    @capacity = capacity # integer
    @chef = Chef.new(chef_name, self) if chef_name
    @reservations = []
  end


  def open?
    Time.now.hour >= 11 && Time.now.hour <= 14
  end

  def closed?
    !open?
  end

  def make_reservation(guest_name)
    @reservations << guest_name
  end
end
