#!/usr/bin/ruby
# Alberto Diaz-Tostado
# COEN 278
# Assignment 3
# Question 5

# grab Compress class from question 2
require_relative 'q2'

class Compress
  def each
    @index.each do |i|
      # pass the string at each index to a block
      yield(@strings[i])
    end
  end

  include Enumerable
  # use  max to find the longest word
  def longest
    @strings.max { |a,b| a.length <=> b.length}
  end
  #use inject to concatenate all strings into one
  def compressedStr
    @strings.inject {|a,b| a + " " + b}
  end
end

string = <<END 
Peter Piper picked a peck of pickled peppers.
A peck of pickled peppers Peter Piper picked.
If Peter Piper picked a peck of pickled peppers,
Where's the peck of pickled peppers that Peter Piper picked?
END

obj = Compress.new(string)
obj.each {|x| print x, " "}
puts
print "longest: ",obj.longest
puts
print "compressed: ",obj.compressedStr