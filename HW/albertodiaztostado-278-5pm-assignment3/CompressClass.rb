#!/usr/bin/ruby
# Alberto Diaz-Tostado
# COEN 278
# Assignment 3
# Question 3
class CompressClass
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