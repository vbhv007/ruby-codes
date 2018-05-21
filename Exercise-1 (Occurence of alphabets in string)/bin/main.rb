require '../lib/String.rb'

if ARGV[0].nil?
  puts 'Please provide an input'
  exit
end
p ARGV[0].count_occurence
