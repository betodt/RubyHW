#!/usr/bin/ruby
# Alberto Diaz-Tostado
# COEN 278
# Assignment 3
# Question 1
# 
# The Enclose class takes two enclosing strings
# and a list of strings which become enclosed by
# the provided enclosing strings
class Enclose
  attr_accessor :arr

  def initialize(left, right, *args)
    @arr = []
    i = 0
    while i < args.length
      @arr.push(left+args[i]+right) 
      i += 1
    end
  end
  def set(left, right,*args)
    @arr = []
    i = 0
    while i < args.length
      @arr.push(left+args[i]+right) 
      i += 1
    end
  end
end

#instantiate an Enclose object
obj = Enclose.new('1', '2', 'hello', 'world')
print obj.arr
puts

#set the enclose object
obj.set('<', '>', '1', '2', '3')
print obj.arr
puts

#define the reverse singleton method
def obj.reverse
  arr.reverse!
end

obj.reverse
print obj.arr
puts