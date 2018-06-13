require '../lib/Array.rb'

if ARGV[0].nil?
  puts 'Please provide an input'
  exit
end
array = ARGV[0].scan(/\w+/)
p array.make_hash
