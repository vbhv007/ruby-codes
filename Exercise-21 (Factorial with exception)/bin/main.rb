require '../lib/Integer.rb'

if ARGV[0].nil?
  puts 'Please provide an input'
  exit
end
p ARGV[0].to_i.factorial
