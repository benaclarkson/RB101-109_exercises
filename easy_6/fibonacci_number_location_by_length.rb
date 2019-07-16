# The Fibonacci series is a series of numbers (1, 1, 2, 3, 5, 8, 13, 21, ...)
# such that the first 2 numbers are 1 by definition, and each subsequent number
# is the sum of the two previous numbers. This series appears throughout the
# natural world.

# Computationally, the Fibonacci series is a very simple series, but the
# results grow at an incredibly rapid rate. For example, the 100th Fibonacci
# number is 354,224,848,179,261,915,075 -- that's enormous, especially
# considering that it takes 6 iterations before it generates the first 2 digit
# number.

# Write a method that calculates and returns the index of the first Fibonacci
# number that has the number of digits specified as an argument. (The first
# Fibonacci number has index 1.)

# Input: integer representing number of digits
# Output: integer representing the index at which that number of digits first
#         occurs

# High Level Abstraction
# Calculate Fibonacci sequence (and store the results in an array) until
#   digit length is == input
# Return the index of that input + 1 (since Fibonacci indices start at 1)

def find_fibonacci_index_by_length(digits)
  fib_arr = [1, 1]
  prev_index = 0
  curr_index = 1
  curr_fib = 0

  while curr_fib.to_s.length < digits
    curr_fib = fib_arr[prev_index] + fib_arr[curr_index]
    fib_arr << curr_fib
    prev_index += 1
    curr_index += 1
  end

  fib_arr.index(curr_fib) + 1
end

find_fibonacci_index_by_length(2) == 7          # 1 1 2 3 5 8 13
find_fibonacci_index_by_length(3) == 12         # 1 1 2 3 5 8 13 21 34 55 89 144
find_fibonacci_index_by_length(10) == 45
find_fibonacci_index_by_length(100) == 476
find_fibonacci_index_by_length(1000) == 4782
find_fibonacci_index_by_length(10000) == 47847
