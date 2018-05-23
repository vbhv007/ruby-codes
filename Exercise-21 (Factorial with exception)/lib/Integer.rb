class Integer
  def factorial
    raise ArgumentError, 'Negative number entered' if self < 0
    zero? ? 1 : (1..self).inject(1) { |a, e| a * e }
  rescue ArgumentError => exception
    puts exception
    exit
  end
end
