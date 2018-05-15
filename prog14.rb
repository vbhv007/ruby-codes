if ARGV[0].nil?
  puts 'Please provide an input'
  exit
end

str = ARGV[0].split(' ').reverse.inject('') { |a, e| a + e + ' ' }
puts '"' + str[0...-1] + '"'
