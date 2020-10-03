require 'pry'

class CashRegister
  attr_accessor :total, :discount, :items, :last_transaction_price
  
  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end 
  
  def add_item(title, price, quantity = 1)
   @price = price
   @total += price * quantity
   @last_transaction_price = price * quantity
   if quantity > 1
      counter = 0
      while counter < quantity
        @items << title
        counter += 1
      end 
    else 
     @items << title
   end 
  end 
  
  def apply_discount
    if @discount > 0
     @total = @price - (@price * (@discount.to_f / 100))
     "After the discount, the total comes to $#{@total.to_i}."
   else 
     "There is no discount to apply."
  end 
end 
  
  def void_last_transaction
    @total -= @last_transaction_price 
  end 
  
end 
