class String
  attr_accessor :str

  def initialize(str)
    @str = str
  end

  def palindrome
    if str == str.reverse
      puts 'Input string is a palindrome'
    else
      puts 'Input string is not a palindrome'
    end
  end
end

if ARGV[0].nil?
  puts 'Please provide an input'
  exit
end

str = String.new(ARGV[0])
str.palindrome
