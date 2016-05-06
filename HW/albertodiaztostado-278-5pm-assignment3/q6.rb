#!/usr/bin/ruby
# Alberto Diaz-Tostado
# COEN 278
# Assignment 3
# Question 6

File.open("convo.txt", "r") do |file|  
  file.each_line do |line|
    puts line if (line =~ /^ADVISOR:/) != nil
  end
end