require 'pry'

class CashRegister
    attr_accessor :discount, :total, :items, :transactions
  
    def initialize(discount = 0)
        self.discount = discount
        self.total = 0
        self.items = []
        self.transactions = []
    end

    def add_item(item, price, quantity = 1)
        self.total += price*quantity
        quantity.times do 
            @items << item
        end
        self.transactions << price*quantity
    end

    def apply_discount
        if discount == 0
            "There is no discount to apply."
        else
            self.total -= (self.total*(self.discount/100.0)).to_i
            "After the discount, the total comes to $#{self.total}."
        end
    end

    def void_last_transaction
        self.total -= self.transactions.pop
    end

end
