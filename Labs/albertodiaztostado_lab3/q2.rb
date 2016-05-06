#!/usr/bin/ruby
#
# Alberto Diaz
# COEN 164L
# Lab 3
# Question 2
#
module Module1
  def method11
    puts "i am method11"
  end
  def method12
    puts "i am method12"
  end
  def method13
    puts "i am method13"
  end
end

module Module2
  def method21
    puts "i am method21"
  end
  def method22
    puts "i am method22"
  end
  def method23
    puts "i am method23"
  end
end

class Class1
  include Module1
  include Module2
end

c1 = Class1.new
c1.method11
c1.method12
c1.method13
c1.method21
c1.method22
c1.method23