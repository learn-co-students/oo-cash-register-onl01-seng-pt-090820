class CashRegister
  attr_accessor :total, :discount, :items, :prices
  
  def initialize(discount = 0)
    @total = 0.0
    @discount = discount 
    @items = []
    @prices = []
  end
  
  def total 
    @total
  end
  
  def add_item(item_name, item_price, item_quantity = 1)
    @total += (item_price * item_quantity)
    item_quantity.times do 
      @items << item_name
      @prices << item_price
    end
  end
  
  def apply_discount 
    if @discount > 0
      @total = @total - @total * (@discount/100.0)
      "After the discount, the total comes to $#{total.to_i}."
    else 
      "There is no discount to apply."
    end
  end 
  
  def void_last_transaction
    last_item = @items[-1]
    if @items.empty?
      0.0 
    else 
      @total = @total - @prices[-1]
      @items.pop
      @prices.pop
    end
    if @items[-1] == last_item
      @total = @total - @prices[-1]
      @items.pop
      @prices.pop
    end
  end
  
  
  
end 