
require"pry"
class CashRegister
    attr_accessor :total, :discount, :items
    def initialize(discount = 0)
   @total = 0
  @discount = discount
 @items = []
    end
    def add_item(items, price, quantity=1)
    quantity.times do 
    @items << items
      end
      @last_transaction = price * quantity 
        @total += price * quantity
        
    end
    def apply_discount
        if @discount == 20
            @total -= (@total * @discount/100)
       "After the discount, the total comes to $#{@total}."
        else
      "There is no discount to apply."
        end
    end
    def void_last_transaction
        @total -=@last_transaction 
    end

end
