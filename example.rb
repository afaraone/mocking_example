require_relative 'house'
require_relative 'person'

house = House.new(24, 'Cool Street', 'N1 4AD', 'London')
person = Person.new('Andres', 34, house)

puts "Person's name"
puts person.name

puts "Person's house number"
puts person.house.house_number

puts "Does the person live in london"
puts person.lives_in_london?