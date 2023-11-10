# frozen_string_literal: true

require 'pry'
require_relative 'suica'
require_relative 'juice'
require_relative 'vendingmachine'

suica = Suica.new
vending_machine = Vendingmachine.new

suica.charge(100)
display = vending_machine.display(suica)
vending_machine.buy('モンスター', suica)
vending_machine.restock('モンスター', 5)

puts suica.money
puts display.map { |drink| drink.name }.join(', ')
puts vending_machine.total_sales
