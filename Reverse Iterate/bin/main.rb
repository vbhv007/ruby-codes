require '../lib/String.rb'

if ARGV[0].nil?
  puts 'Please provide an input'
  exit
end

ARGV[0].reverse_iterate { |i| print "#{i} " }
