require '../lib/Interest.rb'

if ARGV[0].nil?
  puts 'Please provide an input'
  exit
end
ob = Interest.new { |a| print "Interest difference= #{a.round(2)}" }
ob.difference(ARGV[0].to_f, ARGV[1].to_f)
