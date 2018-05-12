str = gets
if str == "\n"
	puts "Please provide an input"
	return
end
str = str.gsub(/\d/,'')
str = str.gsub(/\W/,'')
h=Hash.new(0)
i=0
while str[i]!=nil && str[i]!="\n"
	h[str[i]] += 1
	i=i+1
end
puts h
