#!/usr/bin/ruby
#
# Alberto Diaz
# COEN 164L
# Lab 3
# Question 7
#
str = "I am a very a long string with a lot of characters, about 50"

# a 
str.scan(/\w+/) { |str| p str}
#b
str.scan(/[a-zA-Z]{3}/) { |str| p str}
#c
str.scan(/\d+/) { |str| p str}
#d
str.scan(/[aeiou]/) { |str| p str}