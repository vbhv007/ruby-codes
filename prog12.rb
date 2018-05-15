# this is class Count
class Count
  attr_accessor :str, :lowercase, :uppercase, :digits, :splchar

  def initialize(str)
    @str, @lowercase, @uppercase, @digits, @splchar = str, 0, 0, 0, 0
  end
  def char_count
    str.split('').each {|x| x =~ /^\W/ ? @splchar += 1 : x =~ /[0123456789]/ ? @digits += 1 : x == x.downcase ? @lowercase += 1 : @uppercase += 1}
    puts "Lowercase characters = #{lowercase}\nUppercase characters = #{uppercase}\nNumeric characters = #{digits}\nSpecial characters = #{splchar}"
  end
end

if ARGV[0].nil?
  puts 'Please provide an input'
  exit
end

ob = Count.new(ARGV[0])
ob.char_count
