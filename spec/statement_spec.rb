# frozen_string_literal: true

require 'statement'

describe Statement do
  describe '#initialize' do
    it 'creates an empty array on initialization' do
      expect(subject.statement).to be_empty
    end
  end

  describe '#add_transactions' do
    it 'adds transactions into the statement' do
      transaction = {
        credit: '      ',
        debit: 500,
        balance: 600,
        date: '02/07/2019'
      }
      subject.add_transactions(transaction)
      expect(subject.statement).to eq([{
        date: '02/07/2019',
        credit: '      ',
        debit: 500,
        balance: 600
      }])
    end
  end
end
