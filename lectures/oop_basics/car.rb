class Car # UpperCamelCase
  # # attribute readers
  attr_reader :color
  # # attr_reader creates the method below:
  # # def color
  # #   @color
  # # end
  attr_writer :color
  # # def color=(new_color)
  # #   @color = new_color
  # # end
  attr_accessor :color # creates both reader and writer

  
  # constructor - runs when calling Car.new
  def initialize(color)
    # ENCAPSULATION
    # STATE (attributes of the car)
    # ex: maker/brand, color, price, fuel type, gearbox, number of seats, 4wd
    # @variables are instance variables
    @color = color # string
    @engine_started = false # boolean
  end

  # BEHAVIOUR
  # instance methods

  # explicit reader
  def engine_started?
    @engine_started
  end
  
  def start_engine!
    inject_fuel
    spark_plugs
    crank_engine

    @engine_started = true
  end

  # def paint(new_color)
  #   @color = new_color
  # end

  private

  def inject_fuel
    puts 'Injecting fuel...'
  end

  def spark_plugs
    puts 'Sparking plugs...'
  end

  def crank_engine
    puts 'Cranking engine...'
  end
end


sam = Car.new('red')
joyce = Car.new('black')

puts "Joyce's car is #{joyce.color}"
puts "Sam's car is #{sam.color}"

puts "Joyce's car engine is currently #{joyce.engine_started? ? 'on' : 'off'}"

puts "Starting Joyce's car"
joyce.start_engine!

puts "Joyce's car engine is currently #{joyce.engine_started? ? 'on' : 'off'}"

puts "Joyce paints her car grey..."

# joyce.paint('grey')
joyce.color = 'grey' # joyce.color=('grey')

puts "Joyce's car is now #{joyce.color}"



# car[:key]
# car.instance_method