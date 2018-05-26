require '../lib/TimeAdd.rb'

if ARGV[0].nil?
  puts 'Please provide an input'
  exit
end

p Time.parse(ARGV[0]).sum_time(Time.parse(ARGV[1]))
