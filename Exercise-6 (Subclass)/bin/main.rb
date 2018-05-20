require '../lib/Vehicle.rb'
require '../lib/Bike.rb'
if ARGV[0].nil?
  puts 'Please provide an input'
  exit
end

bike_ob = Bike.new(ARGV[0], ARGV[1].to_i, ARGV[2], ARGV[3].to_f)
bike_ob.to_s
puts "\nAfter #{ARGV[3].to_f} percent hike in price:"
bike_ob.price_increase
bike_ob.to_s
