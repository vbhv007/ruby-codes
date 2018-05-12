line = ARGV[0]
if line.nil?
  puts 'Please provide an input'
  exit
end
puts line.gsub(/[aeiou]/, '*')
