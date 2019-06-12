# In this exercise, you will write a method named xor that takes two arguments,
# and returns true if exactly one of its arguments is truthy, false otherwise.

# P
# input: two truthy values
# output: truthy value

# E
# xor?(5.even?, 4.even?) == true
# xor?(5.odd?, 4.odd?) == true
# xor?(5.odd?, 4.even?) == false
# xor?(5.even?, 4.odd?) == false

# D

# A
# Create a method that takes two arguments
# Evaluate if first arg returns true
# Store this result in a variable
# Evaluate if second arg returns true
# Store this result in a variable
# If only one of the variables is true, return true
# Otherwise, return false

def xor?(arg1, arg2)

  if arg1 && !arg2
    true
  elsif !arg1 && arg2
    true
  else
    false
  end

end

puts xor?(5.even?, 4.even?) == true
puts xor?(5.odd?, 4.odd?) == true
puts xor?(5.odd?, 4.even?) == false
puts xor?(5.even?, 4.odd?) == false
