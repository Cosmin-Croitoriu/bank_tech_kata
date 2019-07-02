# frozen_string_literal: true
require_relative 'statement'
require_relative 'transaction'

class Account
  INSUFICIENT_FUNDS = 'Insuficient funds in your account'
  attr_reader :balance, :sum

  def initialize(statement = Statement.new)
    @statement = statement
    @balance = 0
  end

  def deposit(sum, date = Time.now.strftime("%d/%m/%Y"), transaction = Transaction.new)
    @transaction = transaction
    @balance += sum
    @transaction.deposit_transaction(date, sum, balance)
    @statement.add_transactions(transaction.transaction_log)
  end

  def withdraw(sum, date = Time.now.strftime("%d/%m/%Y"), transaction = Transaction.new)
    raise ArgumentError.new(INSUFICIENT_FUNDS) if insuficient_funds?(sum)
    @transaction = transaction
    @balance -= sum
    @transaction.withdraw_transaction(date, sum, balance)
    @statement.add_transactions(transaction.transaction_log)
  end

  def show_statement
    @statement.print_statement
  end

  private

  def insuficient_funds?(sum)
    (balance - sum).negative?
  end
end
