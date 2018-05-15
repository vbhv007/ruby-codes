if ARGV[0].nil?
  puts 'Please provide an input'
  exit
end

n = ARGV[0].to_i
if n == 0
  puts 1
else
  factorial = (1..n).inject(1) { |fac, x| fac * x }
  puts factorial
end
