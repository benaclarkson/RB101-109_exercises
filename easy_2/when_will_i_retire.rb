puts 'What is your age?'
current_age = gets.chomp.to_i

puts 'At what age would you like to retire?'
retire_age = gets.chomp.to_i

current_year = Time.now.year
retire_year = current_year + (retire_age - current_age)

puts "It's #{current_year}. You will retire in #{retire_year}."
puts "You only have #{retire_year - current_year} years of work to go!"


=begin

P
- Input: Integer (age), Integer (age to retire)
- Output: Date (current year), Date (year when retired), Integer (diff between dates)
- Plan far enough in advance to calculate past centuries? What if the user never dies?

E
Test case 1:
What is your age? 30
At what age would you like to retire? 70

It's 2019. You will retire in 2059.
You have only 40 years of work to go!

Test case 2:
What is your age? 4999
At what age would you like to retire? 10999

It's 2019. You will retire in 8019.
You have only 6000 years of work to go!

D
- Variables containing date format information
- Need a way to calculate the difference of years between
  - Can we do that with date?

A
START by GETTING current age and retire age of user
GET current year
SET retire_year to current_year + (current_age - retire_age)
PRINT "It's #{current_year}. You will retire in #{retire_year}."
PRINT "You only have #{retire_year - current_year} years of work to go!"
END

=end
