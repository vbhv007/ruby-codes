line = gets
if line == "\n"
	puts 'Please provide an input'
	exit
end
puts line
line.gsub(/[aeiou]/,'*')
#newer_line = line.gsub!(/[aeiou]/,'*')
#puts new_line
puts line
#puts newer_line
