class CashRegister
    attr_reader :discount, :items
    attr_accessor :total

    def initialize(discount = 0)
      @total = 0
      @discount = discount 
      @items = []
    end

    

    def add_item(title, price, quantity = 1)
        quantity.times do 
            @items << title
        end
        @last_total = @total
        # save before you changing the total
        @total += price * quantity
    end
#you want to add item in with the price and add over the prev item building a recipt

    # def apply_discount
    #     if discount <= 0
    #         return  "There is no discount to apply."
    #     end
    #    factor = (100.to_f - @discount) /100.to_f
    #    @total = (@total * factor).to_i
    #    return "After the discount, the total comes to $#{@total}."
    # end

# --OR--

    def apply_discount
        if discount != 0 #if discount is not =0
        @total = (total * ((100.0 - discount.to_f)/100)).to_i 
        # calculates float returns integer/rounded off
        "After the discount, the total comes to $#{@total}."
        else
        "There is no discount to apply."
        end
    end 

    def void_last_transaction
        @total = @last_total
        # your total is the saved last total after you change total on line 19
        # you dont need a reader for @last total as you are only using it as an instance variable
    end
end
