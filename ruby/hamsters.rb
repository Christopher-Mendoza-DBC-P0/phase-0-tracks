#4.3 - Christopher Mendoza & Rachael Lunney

#Release 1 - Ask questions and store inputs in variables.
puts "What is the hamster's name?"
name = gets.chomp

puts "What volume level? (1-10)"
volume = gets.to_i

puts "What is the fur color"
fur_color = gets.chomp

puts "Is good candidate for adoption (yes/no)"
adoption = gets.chomp
adoption.downcase!
case adoption
  when "y", "yes"
    adoption = true
  else
    adoption = false
end

puts "What is the estimated age?"
age = gets.chomp
if age == ""
  age = nil
else
  age = age.to_i
end

#Release 2 - Is convert variables into the correct variable type. We thought everything was good but will make adoption a boolean.

#Release 3 - Print to the Console
puts "Hamster name: #{name}"
puts "Volume level: #{volume}"
puts "Fur color: #{fur_color}"
puts "Good for adoption: #{adoption}"
puts "Estimated age: #{age}"
