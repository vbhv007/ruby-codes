require_relative 'Sales.rb'
# this is class file
class MakeCSV
  def saving_into_csv
    sum = 0
    File.open('sales_tax_Output.csv', 'w') do |line|
      line.puts 'Name, Initial Price, Sales Tax, New Price'
      loop do
        ob = Sales.new
        arr = ob.input
        rate1 = arr[2] == 'yes' ? 0 : 10
        rate2 = arr[1] == 'yes' ? 5 : 0
        new_price = ob.tax(arr[3].to_f, (rate1 + rate2).to_f)
        line.puts "#{arr[0]}, #{arr[3].to_i}, #{rate1 + rate2}, #{new_price}\n"
        sum += new_price.to_i
        break if arr[-1] == 'n'
      end
      line.puts("Total amount of the order: #{sum.round}")
    end
  end
end
