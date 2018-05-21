require '../lib/Integer.rb'
require 'prime'
if ARGV[0].nil?
  puts 'Please provide an input'
  exit
end
p ARGV[0].to_i.find_prime
