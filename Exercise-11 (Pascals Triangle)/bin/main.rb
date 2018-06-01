require '../lib/Integer.rb'
if ARGV[0].nil?
  puts 'Please provide an input'
  exit
end
ARGV[0].to_i.pascal { |a| print a.to_s + ' ' }
