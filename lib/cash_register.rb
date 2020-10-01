require 'pry'

class CashRegister
  attr_accessor :total, :discount, :items, :prices
  
  
  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
    @prices = {}
  end
  
  def total
    @total
  end
  
  def add_item(title, price, quantity = 1)
    @total = @total + (price * quantity)
    quantity.times{@items << title}
    @prices[title] = price
  end
  
  def apply_discount
    if @discount > 0 
      percentage = @discount.to_f/100
      @total = @total * (1 - percentage)
      @total = @total.to_i
      return "After the discount, the total comes to $#{@total}."
    else
      return "There is no discount to apply."
    end
  end
  
  def items
    @items
  end
  
  def void_last_transaction
    @total = @total - @prices[@items[-1]]
    if @items == []
      @total = @total - @total
    end
  end
  
  
end