# frozen_string_literal: true

require 'statement'

describe Statement do
  before(:each) do
    @transaction1 = {
      credit: '      ',
      debit: 500,
      balance: 600,
      date: '02/07/2019'
    }
    @transaction2 = {
      credit: 400,
      debit: '      ',
      balance: 100,
      date: '03/07/2019'
    }
  end

  describe '#initialize' do
    it 'creates an empty array on initialization' do
      expect(subject.statement).to be_empty
    end
  end

  describe '#add_transactions' do
    it 'adds transactions into the statement' do
      subject.add_transactions(@transaction1)
      expect(subject.statement).to eq(
        [
          {
            date: '02/07/2019',
            credit: '      ',
            debit: 500,
            balance: 600
          }
        ]
      )
    end
  end

  describe '#print_statement' do
    it 'displays all transactions from statement in reverse order' do
      subject.add_transactions(@transaction1)
      subject.add_transactions(@transaction2)
      expect(subject.print_statement).to eq([@transaction1, @transaction2])
    end
  end
end
