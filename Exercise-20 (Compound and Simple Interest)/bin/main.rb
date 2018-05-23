require '../lib/Interest.rb'

if ARGV[0].nil?
  puts 'Please provide an input'
  exit
end
ob = Interest.new { |p, t| (p * ((1 + 0.1)**t - 1)) - p * 0.1 * t }
ob.difference(ARGV[0].to_f, ARGV[1].to_f)
