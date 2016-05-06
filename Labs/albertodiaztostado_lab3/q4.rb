#!/usr/bin/ruby
#
# Alberto Diaz
# COEN 164L
# Lab 3
# Question 4
#
module Dojo
  A = 4
  module Kata
    B = 8
    module Roulette
      class ScopeIn
        def push
          15
        end
      end
    end
  end
end

A = 16
B = 23
C = 42

puts Dojo::A
puts Dojo::Kata::B
puts Dojo::Kata::Roulette::ScopeIn.new.push
puts A
puts B 
puts C 