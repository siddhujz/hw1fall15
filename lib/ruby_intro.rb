  # When done, submit this entire file to the autograder.
  
  # Part 1
  
  def sum arr
    # YOUR CODE HERE
    arr.reduce(0, :+)
  end
  
  def max_2_sum arr
    # YOUR CODE HERE
    #(arr + [0, 0]).max + ((arr + [0, 0]) - [(arr + [0, 0]).max] +[0]).max
    #(arr + [0, 0]).sort.reverse[0] + (arr + [0, 0]).sort.reverse[1] 
    if arr.nil? || arr.empty?
      0
    elsif arr.count == 1 
      arr[0]
    else
      arr.sort.reverse[0] + arr.sort.reverse[1]
    end
  end
  
  def sum_to_n? arr, n
    # YOUR CODE HERE
    my_sum = false
    if arr.nil? || arr.empty?
      my_sum = false
    elsif arr.count == 1 
      my_sum = false
    else
      for i in 0..(arr.count - 1)
        a = i + 1
        while a <= (arr.count - 1)
          if (arr[i] + arr[a] == n)
            a += 1
            my_sum = true
            break
          else
            a += 1
          end
        end
      end
    end
  my_sum
  end
  
  # Part 2
  
  def hello(name)
    # YOUR CODE HERE
    "Hello, " << name
  end
  
  def starts_with_consonant? s
    # YOUR CODE HERE
    if s.nil? || s.empty?
      false
    elsif s =~ (/\A[^a-z]\w*\z/i)
      false
    elsif s =~ (/\A(a|e|i|o|u)\w*\z/i)
      false 
    else
      true
    end
  end
  
  def binary_multiple_of_4? s
    # YOUR CODE HERE
    if s.nil? || s.empty?
      false
    elsif s =~ (/\A(1|0)+\z/)
        if Integer("0b" + s)%4 == 0
          true
        else
          false
        end
    else
      false
    end
  end
  
  # Part 3
  
  class BookInStock
  # YOUR CODE HERE
    def initialize(isbn, price)  
      # Instance variables
      if price <= 0 || isbn.nil? || isbn.empty?
       raise ArgumentError
      #raise ArgumentError, 'Argument is not numeric' unless isbn.is_?a Numeric
      end
      @isbn = isbn
      @price = price
    end
    def isbn
      @isbn
    end
    def isbn=(new_isbn)
      @isbn=new_isbn
    end
    def price
      @price
    end
    def price=(new_price)
      @price = new_price
    end
    def price_as_string
      "$" << "%0.02f" %[@price]
    end
  end
