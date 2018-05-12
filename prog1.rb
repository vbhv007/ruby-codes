str = ARGV[0]
if str.nil?
  puts 'Please provide an input'
  exit
end
str = str.gsub(/\d/, '')
str = str.gsub(/\W/, '')
hash = Hash.new(0)
i = 0
until str[i].nil
  hash[str[i]] += 1
  i += 1
end
puts hash
