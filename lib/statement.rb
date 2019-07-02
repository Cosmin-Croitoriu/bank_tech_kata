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

  def print_statement
    @statement.reverse_each do |transaction| puts "#{transaction[:date]}   ||
      #{transaction[:credit]}    ||
      #{transaction[:debit]} ||
      #{transaction[:balance]}"
    end
  end
end
