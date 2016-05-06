#Integer
5 
puts "--Integer--"
5.times {|x| puts x}
puts
5.upto(10) {|x| puts x}
puts

#Range
(1..10)
puts "--Range--"
(1..10).each {|x| puts x}
puts
(1..10).step(3) {|x| puts x}
puts

#String
"string"
puts "--String--"
"string".each_char {|x| puts x}
puts
"string".gsub(/[aeiou]/) {|x| puts x}
puts

#Array
['a', 'e', 'i', 'o', 'u']
puts "--Array--"
['a', 'e', 'i', 'o', 'u'].each {|x| puts x}
puts
['a', 'e', 'i', 'o', 'u'].fetch(5) {|x| puts "#{x} is out of bounds"}
puts

#Hash
{ one: 1, two: 2, three: 3 }
puts "--Hash--"
{ one: 1, two: 2, three: 3 }.each {|k, v| puts "#{k}:#{v}"}
puts
{ one: 1, two: 2, three: 3 }.each_key {|k| puts "key is #{k}"}