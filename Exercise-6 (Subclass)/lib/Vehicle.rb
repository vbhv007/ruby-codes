class Vehicle
  attr_reader :name, :dealer
  attr_accessor :price

  def initialize(name, price)
    @name = name
    @price = price
  end

  def to_s
    puts "Bike Name: #{name}"
    puts "Bike Price: #{price}"
    puts "Bike Dealer: #{dealer}"
  end
end
