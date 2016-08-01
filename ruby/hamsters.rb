# 4-3-r1 - Christopher Mendoza

=begin
# hamster's name
# volume level from 1 to 10
# fur color
# good candidate for adoption
# estimated age = nil
=end


name = nil
volume = nil
fur_color = nil
adoption = nil
age = nil

puts "Enter name of hamster."
name = gets.chomp

puts "Enter volume level. (1-10: whole numbers only)"
volume = gets.to_i

puts "Enter the fur color."
fur_color = gets.chomp

puts "Is this hamster a candidate for adoption? ( Y or N )"
adoption = gets.chomp
  if adoption == "Y"
    adoption = true
  else
    adoption = false
  end

puts "What is the estimated age of the hamster?"
age = gets.to_i

puts "Thank you, here is a summary of your entries
      Name: #{name}
      Volume: #{volume}
      Fur Color: #{fur_color}
      Adoption Eligible: #{adoption}
      Age: #{age}"
