Bank tech test
Aim - testing OO and TDD skills by creating code that is easy to access and interact via IRB.

Specification
Requirements
Deposits, withdrawal. Account statement (date, amount, balance) printing. Data can be kept in memory (it doesn't need to be stored to a database or anything).

Acceptance criteria
Given a client makes a deposit of 1000 on 10-01-2012 And a deposit of 2000 on 13-01-2012 And a withdrawal of 500 on 14-01-2012 When the client prints their bank statement

Then the client would see
date || credit || debit || balance
14/01/2012 || || 500.00 || 2500.00
13/01/2012 || 2000.00 || || 3000.00
10/01/2012 || 1000.00 || || 1000.00

Approach 

Test driven development - all the functionality is constructed using TDD

An Account class that initialises a new account with a balance equal to 0.

The Account class:

- has a deposit method that takes an integer as an argument and it adds it to your balance.

 - has a withdrawal method that takes an integer as an argument and it subtracts it from your balance if the integer is lower than the balance (checked by the insufficient_funds? method).

The Transaction class:

  - I have implemented the 'Transaction' class in order to print the upcoming statements in the required format
  - The methods 'deposit_transaction' and 'withdraw_transaction' have distinctive format and will be used to print the statement.

The Statement class:
  - I have created a 'Statement' class that will be responsible for printing the transactions in reverse order.
  - I also included a top text method for a clearer display of the statement

