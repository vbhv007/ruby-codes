require '../lib/Array.rb'

if ARGV[0].nil?
  puts 'Please provide an input'
  exit
end

ARGV[0].scan(/-\d+|\d+\.\d+|\d+|\w+/).reverse_iterate { |i| print "#{i} " }
