require 'pry'

class CashRegister
  attr_accessor :total, :discount, :items, :last_transaction
  
  def initialize(discount = 0)
    @total = 0.0
    @discount = discount
    @items = []
    @last_transaction = 0 
  end
  
  def add_item(item, cost, quantity = 1)
    @total += cost * quantity
    @last_transaction = cost * quantity
    quantity.times do
      @items << item
    end
  end
  
  def apply_discount
    if @discount == 0
      return "There is no discount to apply."
    else
      @total -= (@total * (@discount / 100.0))
      @total = @total.to_i
     "After the discount, the total comes to $#{@total}."
    end
  end
  
  def void_last_transaction
    @total -= @last_transaction
  end
  
end
