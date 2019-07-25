# Write a method that determines the mean (average) of the three scores passed to it, and returns the letter value associated with that grade.

# Numerical Score Letter	Grade
# 90 <= score <= 100	'A'
# 80 <= score < 90	'B'
# 70 <= score < 80	'C'
# 60 <= score < 70	'D'
# 0 <= score < 60	'F'

# Tested values are all between 0 and 100. There is no need to check for negative values or values greater than 100.

# Input: 3 integers
# Output: A letter grade, based on the average of the 3 integer arguments

# Al:
# - avg = (g1 + g2 + g3) / 3
# - case statement to determine letter grade

def get_grade(g1, g2, g3)
  avg = (g1 + g2 + g3) / 3
  case avg
  when avg >= 90
    'A'
  when avg >= 80 && avg < 90
    'B'
  when avg >= 70 && avg < 80
    'C'
  when avg >= 60 && avg < 70
    'D'
  else
    'F'
  end
end

get_grade(95, 90, 93) == "A"
get_grade(50, 50, 95) == "D"
