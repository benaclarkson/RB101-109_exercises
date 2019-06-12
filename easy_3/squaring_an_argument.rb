# Using the multiply method from the "Multiplying Two Numbers" problem, write a
# method that computes the square of its argument (the square is the result of
# multiplying a number by itself).

def multiply(num1, num2)
  num1 * num2
end

def square(num1)
  multiply(num1, num1)
end

def cubed(num1)
  multiply(num1, num1) * num1
end

square(5) == 25
square(-8) == 64

cubed(5) == 125
