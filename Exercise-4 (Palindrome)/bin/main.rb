require '../lib/String.rb'
if ARGV[0].nil?
  puts 'Please provide an input'
  exit
elsif ARGV[0].palindrome?
  puts 'Input string is a palindrome'
else
  puts 'Input string is not a palindrome'
end
