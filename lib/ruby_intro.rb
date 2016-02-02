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
  if n == 0 && arr.empty?
    true
  else
    for x, y in arr.combination(2).to_a
      if (x + y) == n
        return true
      end
    end
    false
  end
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
  if s.match(/^[10]*0$/) == nil
    false
  else
    true
  end
end

# Part 3

class BookInStock
# YOUR CODE HERE
end
