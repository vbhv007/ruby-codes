class Integer
  def pascal_calc(row_num)
    return [1] if row_num.zero?
    previous = pascal_calc(row_num - 1)
    ret = []
    (previous.length - 1).times do |i|
      ret << (previous[i] + previous[i + 1])
    end
    [1, ret, 1].flatten
  end

  def find_pascal
    (1..self).each do |a|
      pascal_calc(a - 1).each { |e| yield e }
      puts
    end
  end
end
