# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  total = 0
  for a in arr
    total += a
  end
  total
end

def max_2_sum arr
  sorted = arr.sort {|x,y| y<=>x}
  if sorted.length == 0
    0
  elsif sorted.length == 1
    sorted[0]
  else
    sorted[0] + sorted[1]
  end
end

def sum_to_n? arr, n
  for x, y in arr.combination(2).to_a
    if (x + y) == n
      return true
    end
  end
  false
end

# Part 2

def hello(name)
  'Hello, ' + name
end

def starts_with_consonant? s
  if (s =~ /[bcdfghjklmnpqrstvwxyz]/i) == 0
    true
  else
    false
  end
end

def binary_multiple_of_4? s
  if s.match(/^0$/) == nil
    if s.match(/^[10]*0$/) == nil
      return false
    end
  end
  true
end

# Part 3

class BookInStock
  def initialize(isbn,price)
    unless isbn.is_a?(String)
      raise ArgumentError.new("ISBN must be a string!")
    end
    unless isbn != ""
      raise ArgumentError.new("ISBN must not be an empty string!")
    end
    unless price > 0
      raise ArgumentError.new("Price of book must be positive.")
    end
    @isbn = isbn
    @price = price
  end
  
  def isbn()
    @isbn
  end
  
  def price()
    @price
  end
  
  def isbn=(new_isbn)
    @isbn = new_isbn
  end
  
  def price=(new_price)
    @price = new_price
  end
  
  def price_as_string
    price_string = '$' + @price.round(2).to_s
    if price_string.match(/.[0-9]{2}$/) == nil
      price_string + '0'
    else
      price_string
    end
  end
end
