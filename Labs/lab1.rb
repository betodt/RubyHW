# Alberto Diaz-Tostado
# COEN 164L
# Lab 1
# 
# Part A

puts "love".reverse   #evol

puts "love".respond_to?(:reverse)   #true

mysymbol = :love  
#puts mysymbol.reverse   #undefined method 'reverse' for :love:Symbol (NoMethodError)
puts mysymbol.respond_to?(:reverse)   #false

puts [:a, :b, :c].include?(:a)  #true

puts ["apple", "banana", "orange"].include?("cherry")  #false

puts ["Hello", "from", "the", "other", "side"].join   #Hellofromtheotherside
puts ["Hello", "from", "the", "other", "side"].join(" ") #Hello from the other side
puts ["Hello", "from", "the", "other", "side"].join("-") #Hello-from-the-other-side

snowy_owl = {"type" => "Bird", "diet"=>"Carnivore", "life_span"=>"12 years"}
puts snowy_owl["type"]  #Bird
snowy_owl["weight"] = "0.5 ounces"
puts snowy_owl  #{"type" => "Bird", "diet"=>"Carnivore", "life_span"=>"12 years"}
puts snowy_owl.keys #type
                    #diet
                    #life_span
                    #weight
puts snowy_owl.values   #Bird
                        #Carnivore
                        #12 years
                        #0.5 ounces

array = ["apple", "banana", "orange", "cherry"]

i = 0
while i < array.length
  puts array[i]
  i += 1
end

array.each {|x| puts x}

# part B

# 1.

def loop
  while 1
    yield
  end
end

i = 0
loop do 
  puts i
  i += 1
  break if i > 10
end

# 2.
class Array
  def reverse
    temp = Array.new(self.length)
    i = 0
    while i < self.length
      temp[i] = self[self.length - i - 1 ]
      i += 1
    end
    return temp
  end
end

array = [1, 2, 3]
puts array.reverse
puts
puts array

# 3.

class Array
  def myeach
    i = 0
    while i < self.length
      yield(i, self[i])
      i += 1
    end
  end
end

array.myeach {|i, v| puts "#{i}: #{v}"}