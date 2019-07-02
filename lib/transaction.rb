# frozen_string_literal: true

class Transaction
  attr_reader :transaction_log

  def initialize
    @transaction_log = {}
  end

  def deposit_transaction(date = Time.now.strftime('%d/%m/%Y'), credit, balance)
    @transaction_log[:credit] = format('%.2f', credit).to_f
    @transaction_log[:debit] = '    '
    @transaction_log[:balance] = format('%.2f', balance).to_f
    @transaction_log[:date] = date
  end

  def withdraw_transaction(date = Time.now.strftime('%d/%m/%Y'), debit, balance)
    @transaction_log[:credit] = '    '
    @transaction_log[:debit] = format('%.2f', debit).to_f
    @transaction_log[:balance] = format('%.2f', balance).to_f
    @transaction_log[:date] = date
  end
end
