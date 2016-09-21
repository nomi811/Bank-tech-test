class Bank

  STARTING_BALANCE = 0

  attr_reader :balance, :amount
  attr_writer :amount

  def initialize
    @balance = 0
  end

  def deposit(amount)
    @balance += amount
  end

  def withdrawal(amount)
    @balance -= amount
  end

  def print_statment

    title_row = 'date ||' + ' credit ||' + ' debit ||' + ' balance'


    puts title_row
  end

end

bank = Bank.new
puts bank.print_statment
