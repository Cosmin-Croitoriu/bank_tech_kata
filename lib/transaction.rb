# frozen_string_literal: true

class Transaction
  attr_reader :transaction

  def initialize
    @transaction = {}
  end

  def deposit_transaction(date = Time.now.strftime('%d/%m/%Y'), credit, balance)
    @transaction[:credit] = credit
    @transaction[:debit] = '      ' 
    @transaction[:balance] = balance
    @transaction[:date] = date
  end

  def withdraw_transaction(date = Time.now.strftime('%d/%m/%Y'), credit, balance)
    @transaction[:credit] = '      '
    @transaction[:debit] = credit
    @transaction[:balance] = balance
    @transaction[:date] = date
  end
end
