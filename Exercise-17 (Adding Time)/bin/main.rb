require '../lib/TimeAdd.rb'

if ARGV[0].nil?
  puts 'Please provide an input'
  exit
end
p Time.new.sum_time(ARGV[0], ARGV[1])
