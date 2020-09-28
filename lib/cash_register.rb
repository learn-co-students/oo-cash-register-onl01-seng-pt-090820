require 'pry'

class CashRegister
    attr_accessor :discount, :total, :items, :transactions
  
    def initialize(discount = 0)
        @discount = discount
        @total = 0
        @items = []
        @transactions = []
    end

    def add_item(item, price, quantity = 1)
        @total += price*quantity
        quantity.times do 
            @items << item
        end
        @transactions << price*quantity
    end

    def apply_discount
        if discount == 0
            "There is no discount to apply."
        else
            @total -= (@total*(self.discount/100.0)).to_i
            "After the discount, the total comes to $#{@total}."
        end
    end

    def void_last_transaction
        #binding.pry
        self.total -= self.transactions.pop
    end

end
