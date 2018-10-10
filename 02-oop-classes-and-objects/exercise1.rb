class BankAccount

  def initialize
    @balance = 0
    @interest_rate = 0.1
  end

  # reader
  def balance
    @balance.round(2)
  end

  # reader
  def interest_rate
    @interest_rate
  end

  # Instance methods
  def deposit(amount)
    @balance += amount
  end

  def withdraw(amount)
    if @balance >= amount
      @balance -= amount
      amount
    else
      "Insuficient funds"
    end
  end

  def gain_interest
    if @balance != 0
      @balance *= 1.1
    end
  end
end

martin_account = BankAccount.new
puts martin_account

puts martin_account.balance
puts martin_account.interest_rate

martin_account.deposit(100)

puts martin_account.balance

martin_account.withdraw(45)

puts martin_account.balance

puts martin_account.withdraw(60)

puts martin_account.balance
martin_account.gain_interest
puts martin_account.balance
