num = gets
if num == "\n"
	puts 'Please provide an input'
	return -1
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
