# Write a program that will ask a user for an input of a word or multiple words
# and give back the number of characters. Spaces should not be counted as a character.

# P
# input: string(s)
# output: "There are __ characters in \"#{input}\"."

# E
# Please write word or multiple words: walk
# There are 4 characters in "walk".

# Please write word or multiple words: walk, don't run
# There are 13 characters in "walk, don't run".

# D
# string interpolation for output
# array to hold all the characters

# A
# Start with input of a word or words
# Strip the input of all spaces and count the length of modified input
# Print this info using string interpolation

puts "Please write word or multiple words:"
user_input = gets.chomp

count = 0
ui_array = user_input.split
ui_array.each { |word| count += word.length }

puts "There are #{count} characters in \"#{user_input}\"."
