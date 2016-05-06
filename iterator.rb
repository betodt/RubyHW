def my_method n
  yield(n)
end

my_method(10) {|x| print x }
puts

def my_method n
  (1..n).each {|x| yield(x)}
end

my_method(10) {|x| print x, ', ' }
puts

def fib n
  a, b = 1,1

  while a < n
    yield(a)
    a, b = b, a+b
  end
end

fib(100) {|x| print x, ', '}
puts

class Array
  def myeach
    m = 0
    while m < self.length
      yield(m, self[m])
      m += 1
    end
  end
end

['a', 'b', 'c', 'd'].myeach {|i, x| puts "#{i}-#{x}"}