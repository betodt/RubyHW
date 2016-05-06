#!/usr/bin/ruby
#
#Alberto Diaz-Tostado
#COEN 164L
#Lab 2
#Question 5

class Foo
  @var = 10

  def self.some_class_method
    puts "inside class method #{self}"
    puts "------"
  end

  def some_instance_method
    puts "self in instance method #{self}"
    puts "------"
  end

  #this will output: Class
  puts "class of self = #{self.class}" # this will be Class

  puts "self in class definition = #{self}"
end

print "Class method: "
Foo.some_class_method

print "Instance method: "
Foo.new.some_instance_method

class FooBar < Foo 
  def self.some_child_class_method
    puts "inside child class method #{self}"
    puts "------"
  end
end

print "Class method: "
FooBar.some_class_method

obj = FooBar.new

print "Child instance method: "
obj.some_instance_method

print "Child class method: "
obj.class.some_class_method

def obj.singleton 
  puts "inside singleton method #{self}"
  puts "------"
end

print "Singleton method: "
obj.singleton

# puts obj.respond_to?(:class)

# puts obj.respond_to?(:superclass)

# puts obj.respond_to?(:instance_methods)

# puts obj.respond_to?(:inspect)

puts obj.class

puts obj.class.superclass

print obj.class.instance_methods
puts

puts obj.class.inspect