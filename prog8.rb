if ARGV[0].nil?
  puts 'Please provide an input'
  exit
end
arr = ARGV[0][1..-2].split(',')
x = ARGV[1].to_i
arr1 = []
arr.each do |i|
  arr1[arr.index(i)] = i.to_i**x
end
print arr1
puts  # just for the new line
