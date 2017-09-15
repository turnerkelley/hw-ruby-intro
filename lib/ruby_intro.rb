# When done, submit this entire file to the autograder.

# Part 1

def sum (arr)
	total = 0
	arr.each do |num|
		total += num
	end
	return total 	
end

def max_2_sum (arr)
  if arr.empty?
   return 0
   
  elsif arr.length >= 2
   arr.sort
   arr[0] + arr[1]

  elsif arr.length == 1
   return arr[0]
  
  
  end
end

def sum_to_n? arr, n
    
    if arr.empty?
        return false
        
    elsif arr.length == 1
        return false
        
    elsif arr.permutation(2).any? {|a,b| a + b == n}
        return true
        
    else 
        return false
    
    end
end

# Part 2

def hello(name)
  greet = "Hello, "
  greet << name
  
end

def starts_with_consonant? s
  if (s =~ /^[zxcvbnmsdfghjklqwrtypZXCVBNMSDFGHJKLQWRTYP]/)    
    return true
    
  elsif (s =~ /^[aeiou]/)
      return false
      
  elsif (s =~ /\d/)
      return false
      
  elsif (s =~ /[\W]/)
      return false
   
  end
end

def binary_multiple_of_4? s
  
  if (s =~ /.[^01]/)
  return false
  
  elsif (s =~ /[a-zA-Z]/)
  return false
  
  elsif s.empty?
  return false
  
  else
    return  s.to_i(2) % 4 == 0
  end
end

# Part 3

class BookInStock
    attr_accessor :isbn, :price
    
    def initialize (isbn, price)
        @isbn = isbn
        @price = price
        if isbn.empty?
            raise ArgumentError
        end
        if price <= 0
            raise ArgumentError
        end
    end
    
    def price
        @price
    end
    
    def isbn
        @isbn
    end

    def price_as_string
        sprintf("$%.2f", price)
    end
    
end
