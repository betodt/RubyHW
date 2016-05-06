#!/usr/bin/ruby
#
#Alberto Diaz-Tostado
#COEN 164L
#Lab 2
#Question 3 

class Item
  def initialize item_name="", quantity=0
    @item_name = item_name
    @quantity = quantity
  end
end

#explicit getters and setters

class Item
  def item_name
    @item_name
  end

  def item_name= x
    @item_name = x 
  end

  def quantity
    @quantity
  end

  def quantity= x 
    @quantity = x 
  end
end

item1 = Item.new
item1.item_name = "bob"
item1.quantity = 10

puts "#{item1.item_name}: #{item1.quantity}"

#attr_accessor definition
class Item
  attr_accessor :item_name
  attr_accessor :quantity
end

item2 = Item.new
item2.item_name = "jane"
item2.quantity = 15

puts "#{item2.item_name}: #{item2.quantity}"