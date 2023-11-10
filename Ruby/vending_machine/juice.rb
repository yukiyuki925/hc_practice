
class Juice
  attr_reader :name, :price, :amount

  def initialize(name, price, amount)
    @name = name
    @price = price
    @amount = amount
  end

  def amount=(new_amount)
    @amount = new_amount
  end

  def reduce_stock
    raise '在庫がありません' if @amount <= 0

    @amount -= 1
  end
end
