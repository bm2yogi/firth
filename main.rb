require './account'
include Firth

my_account = Account.new 'Angela'
my_account.credit(15.25, 'Allowance')
my_account.debit(5.20, 'Phone Bill')
my_account.debit(1, 'Forgetting to do the dishes')
my_account.credit(3, 'Helping with laundry')
puts my_account
puts ''
puts my_account.history
puts ''
puts my_account.history 2
