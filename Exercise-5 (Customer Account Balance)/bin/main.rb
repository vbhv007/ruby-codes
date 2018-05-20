require '../lib/Account.rb'
if ARGV[0].nil?
  puts 'Please provide an input'
  exit
end

customer_one = Account.new(ARGV[0].split(':')[0], ARGV[0].split(':')[1].to_i)
customer_two = Account.new(ARGV[1].split(':')[0], ARGV[1].split(':')[1].to_i)
customer_two.account_no_increment
amount = ARGV[2].split(':')[1].to_i

customer_one.withdraw(amount)
customer_two.deposite(amount)
customer_one.to_s
puts
customer_two.to_s
