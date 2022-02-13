class CashRegister
  attr_accessor :total, :discount
  
  def initialize(discount = 0)
    @total = 0
    @discount = discount
  end

  def add_item(title, price, quantity = 1)
    self.total += price * quantity
  end

  def apply_discount(title, price, quantity = 1)
    if self.discount == 0 || self.discount == nil
      "There is no discount to apply."
    else 
      self.total += price * quantity * (self.discount/100).to_i
      "After the discount, the total comes to $#{self.total}."
    end
  end

  def items(title, price, quantity = 1)
    item_array = Array.new(quantity, title)
    item_array
  end

  def void_last_transaction

  end


end
