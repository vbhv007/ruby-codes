class Integer
  def factorial
    zero? ? 1 : (1..self).inject(1) { |a, e| a * e }
  end
end
