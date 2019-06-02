name = 'Bob'
save_name = name
name = 'Alice'
puts name, save_name
# => Alice
# => Bob

name = 'Bob'
save_name = name
name.upcase!
puts name, save_name
# => BOB
# => BOB
# The information that both name and save_name are pointing to is mutated by
# the String#upcase! method. There is no reassignment of variables and, therefore,
# because the object_id for both variables is the same, they return the same value.
