require '../lib/TimeAdd.rb'

if ARGV[0].nil?
  puts 'Please provide an input'
  exit
end

if ARGV[0] =~ TIME
  t = Time.parse(ARGV[0])
  t.multiple_time(ARGV[1..-1])
else
  p 'Invalid 24-hour time value'
end
