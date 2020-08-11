class CashRegister
  
 attr_accessor :discount, :total

  def initialize(discount=0)
    @discount = discount 
    @total = 0
    @items = []
    @last_item = [] 
  end
  
  def apply_discount
    if discount != 0 
      @total -= (@total * (@discount / 100.to_f))
      "After the discount, the total comes to $#{@total.to_i}."
    else 
      "There is no discount to apply."
    end 
  end 
  
  
  
end