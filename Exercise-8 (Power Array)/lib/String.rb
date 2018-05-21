class String
  def power(x)
    arr = []
    scan(/\d+/).each { |a| arr << a.to_i**x.to_i }
    arr
  end
end
