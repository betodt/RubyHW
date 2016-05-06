#!/usr/bin/ruby
#
#Alberto Diaz-Tostado
#COEN 164L
#Lab 2
#Question 4
#Class book_in_stock

class BookInStock
  attr_accessor :isbn
  attr_accessor :price

  def initialize isbn="", price=0
    @isbn = isbn
    @price = price
  end
end