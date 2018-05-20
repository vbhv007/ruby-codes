class Integer
  def find_fibo
    first = 1
    second = 1
    while first <= self
      yield first
      first, second = second, first + second
    end
  end
end
