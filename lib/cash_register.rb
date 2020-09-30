require 'pry'

class CashRegister
  
  attr_accessor :total, :item, :quantity, :discount
  
  def initialize(discount = 0)
    @total = 0.to_f
    @discount = discount
  end
  
  def total
    @total
  end
  
  def add_item(item, price, quantity = 1)
    @item = [item]
    @price = price
    @quantity = quantity 
    @total += (price * quantity)
    
  end
  
  def apply_discount
    if self.discount == 0
      "There is no discount to apply."
    else percent = discount.to_f/100
      amount = percent * @total
      @total -=amount
      "After the discount, the total comes to $#{@total.to_i}."
    end
  end 
  
  def self.items
    @item.each do |x|
      binding.pry
      @items << x.item
    end
  end
  
  def void_last_transaction
    @total -= @price
    # @item.pop
    if
      @total = 0.to_f
    else
    end
    @total
  end
end
