#!/usr/bin/ruby
#
# Alberto Diaz
# COEN 164L
# Lab 3
# Question 7
#
File.open("lipsum.txt", 'r') do |file|
  while line = file.gets
    puts line if file.lineno.even?
  end
end
