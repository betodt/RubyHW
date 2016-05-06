#!/usr/bin/ruby
# Alberto Diaz-Tostado
# COEN 278
# Assignment 3
# Question 4
class Array
  def collect
    i = 0
    newAry = []
    while i < length
      #push value returned from block into new array
      newAry.push(yield(self[i]))
      i += 1
    end
    return newAry
  end
  def collect!
    i = 0
    while i < length
      #assign value returned from block into current index
      self[i] = yield(self[i])
      i += 1
    end
    return self
  end
end

a = [1,2,3,4,5]
print a.collect{|x| x*x}
puts
print a
puts
print a.collect!{|x| x*x}
puts
print a
puts