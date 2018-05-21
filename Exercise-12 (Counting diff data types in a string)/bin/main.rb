require '../lib/String.rb'

if ARGV[0].nil?
  puts 'Please provide an input'
  exit
end

new_hash = ARGV[0].char_count
puts "Lowercase characters = #{new_hash['lowercase']}"
puts "Uppercase characters = #{new_hash['uppercase']}"
puts "Numeric characters = #{new_hash['digits']}"
puts "Special characters = #{new_hash['splchar']}"
