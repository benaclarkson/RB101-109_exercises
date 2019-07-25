# Write a method that takes a number as an argument. If the argument is a positive number, return the negative of that number. If the number is 0 or negative, return the original number.

# Input: Integer (negative or positive)
# Output: Return the same number, but ensure that it is negative

def negative(num)
  if num <= 0
    num
  else
    -num
  end
end

negative(5) == -5
negative(-3) == -3
negative(0) == 0      # There's no such thing as -0 in ruby
