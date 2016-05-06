#!/usr/bin/ruby
# Alberto Diaz-Tostado
# COEN 278
# Assignment 3
# Question 2
class Compress
  attr_accessor :strings, :index
  def initialize(string="")
    @index = []
    #get an array of all words
    allStrings = string.split(" ")
    allStrings.each do |str|
      #clean up string
      str.downcase!
      str.gsub!(/\W/, "")
      str.chomp!
    end
    #get unique instances of words
    @strings = allStrings.uniq
    #push index of location of unique instance
    allStrings.each{ |str| @index.push(@strings.index(str)) }
  end
end

string = <<END 
Peter Piper picked a peck of pickled peppers.
A peck of pickled peppers Peter Piper picked.
If Peter Piper picked a peck of pickled peppers,
Where's the peck of pickled peppers that Peter Piper picked?
END

obj = Compress.new(string)
print obj.strings
puts
print obj.index
puts