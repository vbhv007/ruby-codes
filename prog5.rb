class Account
  @@account_no = 0
  attr_reader :name, :account_no
  attr_accessor :balance
  def initialize(name, balance)
    @name = name
    @balance = balance
    @@account_no += 1
    @account_no = @@account_no
  end

  def deposite(amount)
    @balance += amount
  end

  def withdraw(amount)
    @balance -= amount
  end
end

if ARGV[0].nil?
  puts 'Please provide an input'
  exit
end

customer1 = ARGV[0].split(':')
customer2 = ARGV[1].split(':')
transfer = ARGV[2].split(':')
customer_one = Account.new(customer1[0], customer1[1].to_i)
customer_two = Account.new(customer2[0], customer2[1].to_i)
amount = transfer[1].to_i

customer_one.withdraw(amount)
customer_two.deposite(amount)

puts "Account number: #{customer_one.account_no}"
puts "Account holder name: #{customer_one.name}"
puts "Account balance: #{customer_one.balance}"
puts
puts "Account number: #{customer_two.account_no}"
puts "Account holder name: #{customer_two.name}"
puts "Account balance: #{customer_two.balance}"
