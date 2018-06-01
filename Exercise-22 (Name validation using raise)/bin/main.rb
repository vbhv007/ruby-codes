require '../lib/Name.rb'
if ARGV[0].nil?
  puts 'Please provide an input'
  exit
end
begin
  ob = Name.new(ARGV[0], ARGV[1])
rescue BlankNameError => e
  puts e.message
rescue UncapitalizeError => a
  puts a.message
else
  p ob.full_name
end
