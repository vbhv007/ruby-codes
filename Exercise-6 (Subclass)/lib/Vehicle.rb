class Vehicle
  attr_reader :name
  attr_accessor :price

  def initialize(name, price)
    @name = name
    @price = price
  end

  def to_s
    "Bike Name: #{name} \nBike Price: #{price}"
  end
end
