print "What is your name? "
name = gets.chomp.to_s

if name.end_with?('!')
  puts "HELLO #{name.chop!.upcase!}. WHY ARE WE SCREAMING?"
else
  puts "Hello #{name}."
end


=begin
P
Greet a user. If they use an ! reply to user in UPCASE, otherwise reply with "Hello #{name}."
- Input: String (user's name)
- Output: String Interpolation (using user's name). UPCASE depending on user input.

E
What is your name? Bob
Hello Bob.

What is your name? Bob!
HELLO BOB. WHY ARE WE SCREAMING?

D
- 1 variable to hold name
- String Interpolation

A
START by GETTING user's name
IF name.end_with?('!')
  puts "HELLO #{name}. WHY ARE WE SCREAMING?"
ELSE
  puts "Hello #{name}."
END

=end
