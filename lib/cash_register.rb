class cash_register
attr_accessor :total, :discount, :items, :prices
attr_accessor :total, :discount, :items, :prices, :quantity


def intialize (prices)
  @price = price
  price.new = price+1
end

def total (prices)
  while price 
  puts self.price
  self.price += 1
end

def add_item(title, price, quantity = 1)
    @total = @total + (price * quantity)
    quantity.times{@items << title}
    @prices[title] = price
end

def add_item(item_name, price, quantity = 1)
    @quantity = quantity
    @total = @total + (price * @quantity)
    @quantity.times{@items << item_name}
    @prices[item_name] = price
  end

 def void_last_transaction
    @total = @total - @prices[@items[-1]]
    if @items == []
      @total = @total - @total
    end
    @total = @total - (@prices[@items[-1]] * @quantity)
  end