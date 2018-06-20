# this is class Sales
class Sales
  def input
    arr = []
    puts 'Name of the product'
    arr << gets.chomp
    puts 'Imported?:'
    arr << gets.chomp
    puts 'Exempted from sales tax?:'
    arr << gets.chomp
    puts 'Price:'
    arr << gets.chomp
    puts 'Do you want to add more items to your list(y/n):'
    arr << gets.chomp
  end

  def tax(price, rate)
    price * (1 + rate / 100)
  end
end
