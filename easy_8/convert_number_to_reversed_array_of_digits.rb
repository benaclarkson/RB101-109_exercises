# Write a method that takes a positive integer as an argument and returns that number with its digits reversed.

# Don't worry about arguments with leading zeros - Ruby sees those as octal numbers, which will cause confusing results. For similar reasons, the return value for our fourth example doesn't have any leading zeros.

# Input: Positive Integer
# Output: The same number, but with its digits reversed and no leading zeros

# Al:
# - Chain the following methods together: to_s, reverse, to_i
# - This converts the input Integer to a string, reverses it, then converts it back to an integer

def reversed_number(int)
  int.to_s.reverse.to_i
end

reversed_number(12345) == 54321
reversed_number(12213) == 31221
reversed_number(456) == 654
reversed_number(12000) == 21 # No leading zeros in return value!
reversed_number(12003) == 30021
reversed_number(1) == 1
