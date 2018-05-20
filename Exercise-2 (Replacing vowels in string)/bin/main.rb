require '../lib/String.rb'

if ARGV[0].nil?
  puts 'Please provide an input'
  exit
end
puts ARGV[0].vowels
