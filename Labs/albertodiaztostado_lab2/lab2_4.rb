#!/usr/bin/ruby
#
#Alberto Diaz-Tostado
#COEN 164L
#Lab 2
#Question 4
#CSV reader class
require 'csv'
require_relative 'book_in_stock'

class CsvReader
  def initialize
    @books_in_stock = []
  end

  def read_in_csv_data csv_file_name
    # "headers: true" means the csv file has headers
    CSV.foreach(csv_file_name, headers: true) do |row|
      @books_in_stock << BookInStock.new(row["ISBN"], row["Price"])
    end
  end

  def total_value_in_stock
    # add code here to calculate total value of all books in stock
    total = 0.0
    @books_in_stock.each do |book|
      total += book.price.to_f
    end
    return total
  end

  def number_of_each_isbn
    # ...
  end
end