# frozen_string_literal: true

class Account
  INSUFICIENT_FUNDS = 'Insuficient funds in your account'
  attr_reader :balance, :sum

  def initialize
    @balance = 0
  end

  def deposit(sum)
    @balance += sum
  end

  def withdraw(sum)
    raise INSUFICIENT_FUNDS if insuficient_funds?(sum)

    @balance -= sum
  end

  private

  def insuficient_funds?(sum)
    (balance - sum).negative?
  end
end
