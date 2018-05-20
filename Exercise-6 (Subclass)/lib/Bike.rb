require '../lib/Vehicle.rb'
class Bike < Vehicle
  attr_reader :percent

  def initialize(name, price, dealer, percent)
    super(name, price)
    @dealer = dealer
    @percent = percent
  end

  def price_increase
    @price += percent * @price / 100
  end
end
