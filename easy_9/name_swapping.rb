# Write a method that takes a first name, a space, and a last name passed as a single String argument, and returns a string that contains the last name, a comma, a space, and the first name.

# Input: String (First Last)
# Output: String (Last, First)

# Al:
# - Return name.split(' ')[1] + ', ' + name.split(' ')[0]

def swap_name(name)
  name.split(' ')[1] + ', ' + name.split(' ')[0]
end

swap_name('Joe Roberts') == 'Roberts, Joe'
