#!/usr/bin/ruby

# Alberto Diaz-Tostado
# COEN 278 5 PM
# Assignment 2

# Question 1

str = <<EOS

Today is Equal Pay Day -- the day each year when a woman's earnings from the year before catch up to a man's.

On average, full-time working women are only paid 79 percent of what men earn -- so they would have to work more than 100 extra days to earn the same amount of money. Women of color face an even greater disparity.

President Obama has been fighting for equal pay -- the first bill he signed into law was the Lily Ledbetter Fair Pay Act -- but we still have a lot of work to do to help close the wage gap.

EOS

# Function: 
# 
#           freq
# 
# Description: 
#           
#           Creates a hash of words from the input string str
#           and the frequency of each word. If the optional 
#           argument string is provided, the function returns
#           the frequency for that word, otherwise it just 
#           returns the entire hash.
#
def freq str, string=nil
  hsh = Hash.new(0)
  ary = str.split(/\W+/)
  ary.each do |word|
    hsh[word] += 1
  end
  return hsh[string] if string != nil
  return hsh
end

######puts freq str

# Question 2

students = [
  {firstname:"John", lastname:"Johnson", email:"jjohnson@scu.edu", year:"third"},
  {firstname:"Al", lastname:"Alister", email:"aalister@scu.edu", year:"fourth"},
  {firstname:"Juan", lastname:"Gonzalez", email:"jgonzalez@scu.edu", year:"second"},
  {firstname:"Amy", lastname:"Ingram", email:"aingram@scu.edu", year:"first"},
  {firstname:"Reagan", lastname:"Ronaldson", email:"rronaldson@scu.edu", year:"first"}
]

def search students, query
  num = 0
  puts "\s\sFirst\tLast\te-mail\t\t\tYear"
  students.each do |student|
    query.each do |key, value|
      if student[key] == value  
        puts "#{num}\s#{student[:firstname]}\t#{student[:lastname]}\t#{student[:email]}\t#{student[:year]}" 
        num += 1
      end
    end
  end
  puts "No students found" unless num > 0
end

search(students, firstname:"Reagan")