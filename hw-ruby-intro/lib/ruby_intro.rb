# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  arr.reduce(0, :+)
end

def max_2_sum arr
  arr.sort.last(2).reduce(0,:+)
end

def sum_to_n? arr, n
  result = false
  if arr.empty? || arr.length < 2
    return result
  else
    combinations = arr.combination(2).to_a
    combinations.each do |ar|
      if sum(ar) == n
         result = true
      end
    end
  end
  result
end

# Part 2

def hello(name)
   "Hello, #{name}"
end

def starts_with_consonant? s
  s[0] =~ /[a-z&&[^aeiou]]/i
end

def binary_multiple_of_4? s
  if s == "0"
    true
  elsif s.to_i(2) == 0
    false
  else 
    s.to_i(2)% 4 == 0
  end
end

# Part 3

class BookInStock
  attr_accessor :isbn
  attr_accessor :price
 def initialize(isbn, price)
  raise ArgumentError.new("Not valid number") if isbn.empty?
  raise ArgumentError.new("Not valid number") if price <= 0
  @price = price
  @isbn = isbn
 end
 
 def price_as_string
  sprintf("$%.2f", @price)
 end
end
