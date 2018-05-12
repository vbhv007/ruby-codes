num = ARGV[0]
if num.nil?
  puts 'Please provide an input'
  exit
end
num = num.to_i
first = 0
second = 1
res = first + second
print '1' + ' '
while num >= res
  print res.to_s + ' '
  first = second
  second = res
  res = first + second
end
puts
