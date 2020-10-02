require"pry"

class CashRegister
  
  attr_accessor :total, :discount, :quantity, :items, :last_transaction
  
  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end
  
  
  def add_item(title, price, quantity = 1)
    #binding.pry
    @last_transaction = price * quantity
    quantity.times do
    items << title
    end
    self.total += price * quantity
  end
  
  
  def apply_discount

    if self.discount == 0
      return "There is no discount to apply."
    else
      self.total -= self.discount * 10
      return "After the discount, the total comes to $#{self.total}."
    end
  end
  
  def void_last_transaction
    self.total -= last_transaction
  end
  
end
