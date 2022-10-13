class Animal
  attr_reader :name

  def self.phyla
    ['worms', 'squids', 'sea worms', 'ones with backend']
  end

  def initialize(name)
    @name = name
  end

  def eat(food)
    "#{name} eats #{food}"
  end
end


