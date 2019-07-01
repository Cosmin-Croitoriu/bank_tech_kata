# frozen_string_literal: true

require 'transaction'

describe Transaction do
  describe '#initialize' do
    it 'initializes a new transaction' do
      transaction = Transaction.new
      expect(transaction).to be_an_instance_of(Transaction)
    end
  end
end
