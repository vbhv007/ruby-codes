# this is class integer
class Integer
  def fact(number)
    (1..number).reduce(:*)
  end

  def binomial(row, col)
    return 1 if (row - col).zero?
    return 1 if col.zero?
    fact(row) / (fact(col) * fact(row - col))
  end

  def pascal
    (0..self - 1).each do |n|
      (0..n).each do |a|
        yield binomial(n, a)
      end
      puts
    end
  end
end
