#!/usr/bin/ruby
# Alberto Diaz-Tostado
# COEN 278
# Assignment 3

require_relative 'Enclose'
require_relative 'Compress'
require_relative 'CompressClass'
require_relative 'Array'

# Question 1
puts
puts "Question 1"
puts

#instantiate an Enclose object
obj = Enclose.new('1', '2', 'hello', 'world')
print obj.arr
puts

#set the enclose object
obj.set('<', '>', '1', '2', '3')
print obj.arr
puts

#define the reverse singleton method
def obj.reverse
  arr.reverse!
end

obj.reverse
print obj.arr
puts

# Question 2
puts
puts "Question 2"
puts

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

# Question 3
puts
puts "Question 3"
puts

CompressClass.compress(string)
print CompressClass.strings
puts
print CompressClass.index
puts

# Question 4
puts
puts "Question 4"
puts

a = [1,2,3,4,5]
print a.collect{|x| x*x}
puts
print a
puts
print a.collect!{|x| x*x}
puts
print a
puts

# Question 5
puts
puts "Question 5"
puts

# Reopen compress from question 2 to add more methods
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

#reinstantiate a Compress object using the same string from above
obj = Compress.new(string)
obj.each {|x| print x, " "}
puts
puts
print "longest: ",obj.longest
puts
puts
print "compressed: ",obj.compressedStr
puts

# Question 6
puts
puts "Question 6"
puts

File.open("convo.txt", "r") do |file|  
  file.each_line do |line|
    # print the line only if it starts with ADVISOR:
    puts line if (line =~ /^ADVISOR:/) != nil
  end
end