# Changing Method class
class MethodChange
  attr_accessor :str

  def initialize(str)
    @str = str
  end

  def to_s
    str.each_char do |c|
      if c == c.upcase
        print c.downcase
      elsif c == c.downcase
        print c.upcase
      end
    end
  end
end

if ARGV[0].nil?
  puts 'Please provide an input'
  exit
end

ARGV.each do |a|
  str = MethodChange.new(a)
  str.to_s
  print ' '
end
puts
