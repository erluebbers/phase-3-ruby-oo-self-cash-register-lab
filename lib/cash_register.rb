require 'pry'

class CashRegister
  attr_accessor :total, :discount, :items, :last_price
  
  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
    @last_price = 0
  end

  def add_item(title, price, quantity = 1)
    self.total += price * quantity
    quantity.times do
      self.items.push(title)
    end
    self.last_price=(price * quantity)
  end

  def apply_discount
    if self.discount == 0
      "There is no discount to apply."
    else 
      self.total -= self.total * (self.discount/100.to_f)
      "After the discount, the total comes to $#{self.total.to_i}."
    end
  end

  def void_last_transaction
    self.items.length == 0 ? self.total=(0.to_f) : self.total -= last_price
  end

end

