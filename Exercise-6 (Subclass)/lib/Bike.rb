require '../lib/Vehicle.rb'
class Bike < Vehicle
  attr_reader :percent, :dealer

  def initialize(name, price, dealer, percent)
    super(name, price)
    @dealer = dealer
    @percent = percent
  end

  def price_increase
    @price += percent * @price / 100
  end

  def to_s
    puts super
    puts "Bike Dealer: #{dealer}"
  end
end
