puts 'What is the bill?'
bill = gets.chomp.to_f

puts 'What is the tip percentage?'
tip = gets.chomp.to_f

usd_tip = ((tip / 100) * bill).round(2)
total = (usd_tip + bill).round(2)

# puts "The tip is $#{sprintf("%#.f00", usd_tip)}"
puts "The tip is $#{ "%.2f" % (usd_tip)}"

puts "The total is $#{ "%.2f" % (total)}"

=begin
P
Create a simple tip calculator. The program should prompt for a bill amount and
a tip rate. The program must compute the tip and then display both the tip and
the total amount of the bill.
- Input: Float (bill amount), Integer (tip percentage)
- Output: Float (tip amount), Float (total including tip)

E
What is the bill? 200
What is the tip percentage? 15

The tip is $30.0
The total is $230.0

D
- Float

A
START GET bill amount & tip percentage from user
usd_tip = (tip / 100) * bill
total = usd_tip + bill
END by returning this value
=end
