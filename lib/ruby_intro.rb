# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  #arr.sum
  result = 0
  arr.each {|x| result = result + x}
  result
end

def max_2_sum arr
  #arr.sort!
  #result = 0
  #result = arr.last(2).sum
  #result
  arr.max(2).sum
  
end

def sum_to_n? arr, n
  arr.combination(2).any? {|x,y| x + y == n}

end

# Part 2

def hello(name)
  str = "Hello, "
  str.concat(name)
  str

end

def starts_with_consonant? s
 Regexp.new('^[qwrtypsdfghjklzxcvbnm]', Regexp::IGNORECASE).match?(s)
end

def binary_multiple_of_4? s
  /^(0|00|([01]+00))$/.match?(s)
end

# Part 3

class BookInStock
  def initialize(isbn, price)
    @isbn = isbn
    @price = price
    
    if @price <= 0 
      raise ArgumentError.new("price must be greater than 0")
    end
    if @isbn == ''
      raise ArgumentError.new("isbn cannot be an empty string")
    end
  end
  def isbn
    @isbn
  end
  def price
    @price
  end
  def isbn=(isbn)
    @isbn = isbn
  end
  def price=(price)
    @price = price
  end
  
  def price_as_string
    return "$%.2f" % price
  end
end
