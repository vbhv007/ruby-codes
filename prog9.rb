if ARGV[0].nil?
  puts 'Please provide an input'
  exit
end

hash = Hash.new(0)
arr = ARGV[0][1..-2].split(',')
arr.each do |x|
  x.gsub!(/[']/, '')
  hash[x.length] = if hash.keys.include? x.length
    hash[x.length] + Array(x)
  else
    Array(x)
  end
end
puts hash.sort.to_h
