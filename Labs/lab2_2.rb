#!/usr/bin/ruby
#
#Alberto Diaz-Tostado
#COEN 164L
#Lab 2
#Question 2

def mysterious_total subtotal:0, tax:0, discount:0
  puts "#{subtotal}+#{tax}-#{discount} = #{subtotal + tax - discount}"
end

mysterious_total(subtotal:100, tax:10, discount:5)

mysterious_total(subtotal:100, discount:5, tax:10)

# part C

def mysterious_total **args
  total = 0
  args.each do |key, value|
    total += value if key == :subtotal || key == :tax
    total -= value if key == :discount
  end
  puts total
end

mysterious_total(subtotal:100, discount:5, tax:10)