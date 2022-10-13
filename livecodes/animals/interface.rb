require_relative 'lion'
require_relative 'meerkat'
require_relative 'warthog'

simba = Lion.new('Simba')
nala = Lion.new('Nala')
timon = Meerkat.new('Timon')
pumbaa = Warthog.new('Pumbaa')
whiskey = Lion.new('Whiskey')

# Polymorphism - the array contains instances of different classes
animals = [simba, nala, timon, pumbaa, whiskey]

animals.each do |animal|
  puts animal.talk # `#talk` is an example of duck typing - all different classes respond to `#talk`
end