#5-3 Christopher Mendoza

client_hash = {
  :name => nil,
  :age => nil,
  :children => nil,
  :like_beach_theme => nil
}

#ask for client name
puts "Enter Client Name:"
client_hash[:name] = gets.chomp
#ask for client age
puts "Enter Client Age:"
client_hash[:age] = gets.to_i
#ask for client number of children
puts "Enter number of children that client has:"
client_hash[:children] = gets.to_i
#ask decor theme
puts "Does client like a beach theme (yes/no)"
beach_theme = gets.chomp
if beach_theme == 'yes'
  client_hash[:like_beach_theme] = true
else
  client_hash[:like_beach_theme] = false
end

puts "Here are your entries"
puts client_hash
puts "Would you like to change any of your entries (y/n)"
change_entries = gets.chomp
if change_entries == 'y'
  puts "Which key would you like to change? (name, age, children, like_beach_theme)"
  key_to_change = gets.chomp
  key_to_change = key_to_change.to_sym
      if key_to_change == :name
        puts "Enter Name Change:"
        client_hash[:name] = gets.chomp
        puts "Revised client record"
        puts client_hash
      elsif key_to_change == :age
        puts "Enter Age Change:"
        client_hash[:age] = gets.to_i
        puts "Revised client record"
        puts client_hash
      elsif key_to_change == :children
        puts "Enter number of children"
        client_hash[:children] = gets.to_i
        puts "Revised client record"
        puts client_hash
      elsif  key_to_change == :like_beach_theme
        puts "Change Beach Theme to (yes/no)"
        beach_theme = gets.chomp
        if beach_theme == 'yes'
          client_hash[:like_beach_theme] = true
        else
          client_hash[:like_beach_theme] = false
        end
        puts "Revised client record"
        puts client_hash
      else
        puts "I don't understand"
      end
  else
    "Thank you"
end
