class Person
  attr_reader :name, :age, :house

  def initialize(name, age, house)
    @name = name
    @age = age.to_i
    @house = house
  end

  def lives_in_london?
    @house.city == 'London'
  end
end