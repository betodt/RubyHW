#!/usr/bin/ruby
#
#Alberto Diaz-Tostado
#COEN 164L
#Lab 2
#Question 4
#Main driver

require_relative 'lab2_4'

reader = CsvReader.new

#ARGV is an array that contains each of the command line arguments
#passed to the running program.

ARGV.each do |csv_file_name|
  STDERR.puts "Processing #{csv_file_name}"
  reader.read_in_csv_data(csv_file_name)
end

puts "Total value = #{reader.total_value_in_stock}"