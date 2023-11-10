
class Vendingmachine
  attr_reader :total_sales

  def initialize
    @total_sales = 0
    @juices = [
      Juice.new('ペプシ', 150, 5),
      Juice.new('モンスター', 230, 5),
      Juice.new('いろはす', 120, 5)
    ]
  end

  def display(suica)
    @juices.select { |juice| juice.amount > 0 && juice.price <= suica.money }
  end

  def buy(drink_name, suica)
    select_drink = @juices.find { |juice| juice.name == drink_name }

    raise 'charge Error' unless select_drink && select_drink.price <= suica.money
    raise 'amount Error' unless select_drink.amount > 0

    select_drink.reduce_stock
    @total_sales += select_drink.price
    suica.money -= select_drink.price
  end

  def restock(drink_name, restock)
    select_drink = @juices.find { |juice| juice.name == drink_name }
    select_drink.amount += restock if select_drink
  end
end
