class Integer
  def find_prime
    arr = []
    (2..self).step(1) { |a| arr << a if a.prime? }
    # Prime.each(self) { |a| arr << a }   this is good method actually, but prob said to use step so ...
    arr
  end
end
