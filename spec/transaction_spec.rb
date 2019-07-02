# frozen_string_literal: true

require 'transaction'

describe Transaction do
  describe '#initialize' do
    it 'initializes a new transaction' do
      transaction = Transaction.new
      expect(transaction).to be_an_instance_of(Transaction)
    end
  end

  describe '#deposit_transaction' do
    it 'creates a log for a deposit' do
      log = Transaction.new
      log.deposit_transaction('02/07/2019', 500, 600)
      expect(log.transaction_log).to eq(
        credit: 500.00,
        debit: '    ',
        balance: 600.00,
        date: '02/07/2019'
      )
    end
  end

  describe '#withdraw_transaction' do
    it 'creates a log for a withdraw from the account' do
      log = Transaction.new
      log.withdraw_transaction('02/07/2019', 500, 600)
      expect(log.transaction_log).to eq(
        credit: '    ',
        debit: 500.00,
        balance: 600.00,
        date: '02/07/2019'
      )
    end
  end
end
