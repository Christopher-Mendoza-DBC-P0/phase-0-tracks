#6.4 Christopher Mendoza
class Super_villain
  attr_reader :age
  attr_accessor :name, :fly_power

  def initialize(name)
    puts "A new Super Villain is born"
    @name = name
    @age = rand(0..340)
    @fly_power = false
  end

  def taunt
   puts "Your time has come... Prepare yourself "
  end

  def sucker_punch
    puts "#{@name} punches hero to the gut - blam!!"
  end

  def telekinesis(item)
    puts "#{@name} uses telekinesis to throw #{item} at hero - kaboom!"
  end

  def about
    puts "-----------------------------"
    puts "Super Villain Name: #{@name}"
    puts "Age: #{@age}"
    puts "Can Fly: #{@fly_power}"
  end

end

# DRIVER CODE

# boris = Super_villain.new('Boris')
# boris.taunt
# boris.sucker_punch
# boris.telekinesis('lamp shade')


# USER INTERFACE
super_villains = []

#instead of entering infinite loop i ask user home many super villains they want to make.

puts "How many Super Villains do you want to wreak havoc upon this earth?"
number_of_super_villains = gets.to_i

number_of_super_villains.times do |villain|
  puts "What shall we name this super villain?"
  villain_name = gets.chomp
  villain = Super_villain.new(villain_name)
  puts "Can this super villain fly? (true/false)"
  villain_fly = gets.chomp
  villain.fly_power = villain_fly
  super_villains << villain
end

super_villains.each do |villain|
  villain.about
end


#Release 0

## design (as opposed to actually building) a class representing anything you like.

#==> Create a Super Villain Class

## at least three attributes (using at least two data types) whose values will vary from instance to instance (example: age)

#==> Attribute 1 => Name => string
#==> Attribute 2 => Age => integer
#==> Attribute 3 => Fly_power => boolean

## at least three methods, at least one of which takes an argument
#==> Method 1 ==> taunt
#==> Method 2 ==> sucker_punch
#==> Method 3 ==> telekinesis

# Release 1

# Your class should ...

# Use attr_reader and attr_accessor
# Use an initialize method that sets at least one attribute
# Feel free to tweak your original design if needed to make this possible.

# Release 2

# Your user should be allowed to create as many instances of your class as they like.

# Prompt the user for each attribute, and don't forget to convert their input to the appropriate data type. Store these class instances in an array.

# When the user indicates that they are finished creating instances, loop through the array and print out the attributes of each instance as a confirmation message of what was created.

