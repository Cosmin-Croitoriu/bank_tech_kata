require 'account'

describe Account do
  describe '#initialize' do
    it 'creates a new account with balace of 0' do
      expect(subject.balance).to be 0
    end
  end
end