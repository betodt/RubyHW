#!/usr/bin/ruby
# Alberto Diaz-Tostado
# COEN 278
# Assignment 3
# Question 3
class Compress
  #reopen class and add accessors to the class level
  class << self; attr_accessor :strings, :index end
  @index
  @strings
  def self.compress(string="")
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

Compress.compress(string)
print Compress.strings
puts
print Compress.index
puts