def repeat(word, repeats)
  puts "Positive integer not provided." if repeats < 1
  repeats.times do
    puts word
  end
end

repeat("hello", 10)
repeat("hello", 1)
repeat("hello", 0)
repeat("hello", -1)
