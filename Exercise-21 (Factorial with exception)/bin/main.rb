require '../lib/Integer.rb'
begin
  if ARGV[0].nil?
    puts 'Please provide an input'
    exit
  end
  p ARGV[0].to_i.factorial
rescue NegativeArgumentError => e
  puts e.message
end
