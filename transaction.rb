module Firth

    require 'date'
    
    class Transaction
        
        attr_reader :amount, :date, :description
        
        def initialize(amount, description)
            @date = Date.today
            @amount = amount
            @description = description
        end
        
        def to_s
            "#{self.amount} on #{self.date} for #{self.description}"
        end
    end
end