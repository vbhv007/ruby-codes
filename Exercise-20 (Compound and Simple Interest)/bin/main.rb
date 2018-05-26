require '../lib/Interest.rb'

if ARGV[0].nil?
  puts 'Please provide an input'
  exit
end
ob = Interest.new { |a| printf 'Interest difference= %.2f', a }
ob.difference(ARGV[0].to_f, ARGV[1].to_f)
