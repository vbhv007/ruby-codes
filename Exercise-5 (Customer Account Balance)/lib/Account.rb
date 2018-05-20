class Account
  attr_reader :name, :account_no
  attr_accessor :balance

  def initialize(name, balance)
    @name = name
    @balance = balance
    @account_no = 1
  end

  def account_no_increment
    @account_no += 1
  end

  def deposite(amount)
    @balance += amount
  end

  def withdraw(amount)
    @balance -= amount
  end

  def to_s
    puts "Account number: #{account_no}"
    puts "Account holder name: #{name}"
    puts "Account balance: #{balance}"
  end
end
