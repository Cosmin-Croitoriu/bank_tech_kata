# frozen_string_literal: true

require 'account'

describe Account do
  describe '#initialize' do
    it 'creates a new account with balace of 0' do
      expect(subject.balance).to be 0
    end
  end

  describe '#deposit' do
    it 'allows you to deposit funds in your account' do
      subject.deposit(100)
      expect(subject.balance).to be 100
    end
  end

  describe '#withdraw' do
    it 'allows you to withdraw funds from your account' do
      subject.deposit(100)
      subject.withdraw(50)
      expect(subject.balance).to be 50
    end

    it 'raises an error if you have insuficient funds' do
      subject.balance
      sum = 150
      expect { subject.withdraw(sum) }.to raise_error 'Insuficient funds\
      in your account'
    end
  end
end
