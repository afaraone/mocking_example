class House
  def initialize(house_number, street, post_code, city)
    @house_number = house_number.to_i
    @street = street
    @post_code = post_code
    @city = city
  end

  def house_number
    @house_number
  end

  def street
    @street
  end

  def post_code
    @post_code
  end
end