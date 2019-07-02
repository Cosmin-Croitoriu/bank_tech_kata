# frozen_string_literal: true

require 'statement'

describe Statement do
  describe '#initialize' do
    it 'creates an empty array on initialization' do
      expect(subject.statement).to be_empty
    end
  end
end
