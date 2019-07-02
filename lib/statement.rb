# frozen_string_literal: true

require_relative 'transaction'

class Statement
  attr_reader :statement
  def initialize
    @statement = []
  end

  def add_transactions(transaction)
    @statement << transaction
  end
end
