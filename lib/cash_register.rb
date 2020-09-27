require"pry"

class CashRegister
    attr_accessor :total, :discount, :items
    @items = []
    @total = 0

    def initialize(discount = 0)
        @discount = discount
        @items = []
        @total = 0
    end

    def add_item(item, cost, quantity = 1)
        @cost = cost
        @quanity = quantity
        sub_total = @cost * quantity
        @total = @total + sub_total
        @total
        if quantity > 1
            counter = 0
            while counter < quantity
              @items << item
              counter += 1
            end
          else
            @items << item
          end
    end

    def apply_discount
        if @discount > 0 
            adj_d = @discount * 0.10
            mod_d = adj_d * 0.10
            subtotal = @total * mod_d
            @total = @total - subtotal
            "After the discount, the total comes to $#{@total.to_i}."
        else
            "There is no discount to apply."
        end 
    end

    def void_last_transaction
        @total -= @cost * @quanity
    end
    #binding.pry

end
