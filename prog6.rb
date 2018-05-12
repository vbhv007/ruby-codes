# Vehicle class
class Vehicle
  attr_reader :name
  attr_accessor :price

  def initialize(name, price)
    @name = name
    @@price = price
  end

  def to_s
    puts "Bike Name: #{name}"
    puts "Bike Price: #{price}"
  end
end

class Bike < Vehicle
  attr_reader :dealer, :percent

  def initialize(name, price, dealer, percent )
    super(name, price)
    @dealer = dealer
    @percent = percent
  end

  def price_increase
    @@price = @@price + ( percent * @@price / 100 )
  end

  def to_s
    puts "Bike Dealer: #{dealer}"
  end
end

name = ARGV[0]
price = ARGV[1].to_i
dealer = ARGV[2]
percent = ARGV[3].to_i

veh_ob = Vehicle.new(name, price)
bike_ob = Bike.new(name, price, dealer, percent)

veh_ob.to_s
bike_ob.to_s
puts
puts "After #{percent} percent hike in price:"
bike_ob.price_increase
veh_ob.to_s
bike_ob.to_s
