module Firth

    require './transaction'
    
    class Account
        attr_reader :owner, :transactions
    
        def initialize (owner)
            @owner = owner
            @transactions = []
        end
        
        def credit (amount, description)
            @transactions << Transaction.new(amount, description)
        end
        
        def debit (amount, description)
            @transactions << Transaction.new(-amount, description)
        end
        
        def balance
            @transactions
                .map{|transaction| transaction.amount}
                .inject{|memo, amount| memo + amount}
        end
        
        def history(length = 5)
            @transactions.last(length).reverse().each {|trans|}
        end
        
        def to_s
            "#{self.owner} has #{self.balance}"
        end
        
    end
end