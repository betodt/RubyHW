#!/usr/bin/ruby
#
# Alberto Diaz
# COEN 164L
# Lab 3
# Question 1
# 
class Foo
  def self.cm 
    puts "I am a class method"
  end
end

class Bar < Foo 
  def im 
    puts "I am an instance method"
  end
end

Bar.cm #call inherited class method
obj = Bar.new  #class Bar object
obj.class.methods #class Foo method