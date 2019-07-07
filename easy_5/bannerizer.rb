# Write a method that will take a short line of text, and print it within a box.

# print_in_box('To boldly go where no one has gone before.')
# +--------------------------------------------+
# |                                            |
# | To boldly go where no one has gone before. |
# |                                            |
# +--------------------------------------------+

# print_in_box('')
# +--+
# |  |
# |  |
# |  |
# +--+

# Input: string
# Output: The input string formatted into a banner

def lines(txt, border, filler)
  print border
  (txt.length + 2).times do
    print filler
  end
  print border
  print "\n"
end

def print_in_box(text)
  lines(text, "+", "-")
  lines(text, "|", " ")
  print "|" + " #{text} " + "|"
  print "\n"
  lines(text, "|", " ")
  lines(text, "+", "-")
end

print_in_box('To boldly go where no one has gone before.')
print_in_box('')
