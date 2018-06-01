require_relative 'NegativeArgumentError.rb'

class Integer
  def factorial
    raise NegativeArgumentError if self < 0
    zero? ? 1 : (1..self).inject(:*)
  end
end
