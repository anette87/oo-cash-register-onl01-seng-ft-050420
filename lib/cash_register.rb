require "pry"

class CashRegister
  attr_accessor :total, :discount, :price, :items

  def initialize(discount = 0)
    @total = 0
    @discount = discount
  end
 
  def total
    return @total 
  end 

  def add_item(item, price, quantity = 1)
    @price = price
    @total += price * quantity
    @items = []
      @items << item
        if quantity > 1
           counter = 0
        elsif counter < quantity
           @items << item
           counter += 1
        end 
  end

  def apply_discount
    if @discount > 0
      take_off = (price * discount)/100
      @total -= take_off
      return "After the discount, the total comes to $#{total}."
    else
      return "There is no discount to apply."
    end
  end
  
  def item
    @items
 end 


  def void_last_transaction
    @total -= @price
  end 
    

end
