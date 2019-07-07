# Given a string that consists of some words and an assortment of non-alphabetic
# characters, write a method that returns that string with all of the
# non-alphabetic characters replaced by spaces. If one or more non-alphabetic
# characters occur in a row, you should only have one space in the result (the
# result should never have consecutive spaces).

# cleanup("---what's my +*& line?") == ' what s my line '

# Use regex to capture the non-alphabetic characters
# Use gsub to replace all the matched groups with spaces
# Use squeeze to consolidate duplicate characters

def cleanup(str)
  str.gsub(/[^a-z]/i, ' ').squeeze(' ')
end

cleanup("---what's my +*& line?") == ' what s my line '
