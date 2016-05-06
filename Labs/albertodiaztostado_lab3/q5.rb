#!/usr/bin/ruby
#
# Alberto Diaz
# COEN 164L
# Lab 3
# Question 5
#
module Greetings
  def english
    puts "Hello!"
  end
  def french
    puts "Bonjour!"
  end
  def spanish
    puts "Hola!"
  end
end
class Hello
  include Greetings
end
hello = Hello.new 
hello.spanish

module Greetings
  def self.english
    puts "Hello!"
  end
  def self.french
    puts "Bonjour!"
  end
  def self.spanish
    puts "Hola!"
  end
end
class Hello
  extend Greetings
end
Hello.spanish