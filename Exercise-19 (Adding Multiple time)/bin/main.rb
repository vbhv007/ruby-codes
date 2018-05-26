require '../lib/TimeAdd.rb'

if ARGV[0].nil?
  puts 'Please provide an input'
  exit
end

ob = Time.new
ob.multiple_time(ARGV)
