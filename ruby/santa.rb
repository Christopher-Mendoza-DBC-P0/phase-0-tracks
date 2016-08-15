class Santa
  attr_reader :ethnicity
  attr_accessor :gender, :age


  def initialize(gender, ethnicity)
    puts "initializing Santa instance..."
    @gender = gender
    @ethnicity = ethnicity
    @reindeer_ranking = [ "Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen" ]
    @age = 0
  end

  def speak
    puts "Ho, ho, ho! Haaaappy holidays!"
  end

  def eat_milk_and_cookies(cookie_type)
    puts "That was a good #{cookie_type}"
  end

  def celebrate_birthday
   @age += 1
  end

  def get_mad_at(reindeer_name)
    if @reindeer_ranking.include?(reindeer_name)
      @reindeer_ranking.delete(reindeer_name)
      @reindeer_ranking.insert(@reindeer_ranking.length, reindeer_name)
    else
      reindeer_name = reindeer_name
    end
  end

  def about
    puts "------------------"
    puts "gender: #{@gender}"
    puts "ethnicity: #{@ethnicity}"
    puts "age: #{@age}"
  end

end


# DRIVER CODE
santas = []
# santas << Santa.new("agender", "black")
# santas << Santa.new("female", "Latino")
# santas << Santa.new("bigender", "white")
# santas << Santa.new("male", "Japanese")
# santas << Santa.new("female", "prefer not to say")
# santas << Santa.new("gender fluid", "Mystical Creature (unicorn)")
# santas << Santa.new("N/A", "N/A")
# test = Santa.new('white', 'male')
# test.celebrate_birthday
# test.gender = 'female'
# p test.age
# p test.ethnicity
# p test.get_mad_at('Vixen')
# p test
# p santas
example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]

puts "How many Santas to make?"
santas_to_make = gets.to_i
santas_to_make.times do |santa|
  santas << Santa.new( example_genders.sample, example_ethnicities.sample )
end
santas.each { |santa| santa.age = rand(0..140) }
santas.each { |santa| santa.about }

#Release 0

# Eventually, your simulator will build thousands of Santas, but for now, start by defining a Santa class in phase-0-tracks/ruby/santa.rb. Your class should have three instance methods:

# A speak method that will print "Ho, ho, ho! Haaaappy holidays!" (Santa has been working on being more inclusive.)
# An eat_milk_and_cookies method that takes a cookie type (example: "snickerdoodle") as a parameter and prints "That was a good <type of cookie here>!"
# An initialize method that prints "Initializing Santa instance ...".
# Add a bit of code below your class declaration to check that you're able to initialize a Santa instance and call its methods.

# Release 1

# Update your Santa class with the following attributes:

# gender, which will be a string passed in on initialization
# ethnicity, which will be a string passed in on initialization
# reindeer_ranking, an array of reindeer from most preferred to least preferred. This is not passed in on initialization; it simply gets a default value of ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
# age, which is not passed in on initialization and defaults to 0

# Release 2 / 3 refactor
# Add three attribute-changing methods to your Santa class:

# celebrate_birthday should age Santa by one year.
# get_mad_at can take a reindeer's name as an argument, and move that reindeer in last place in the reindeer rankings. Vixen knows what he did.
# The @gender attribute should have a setter method that allows @gender to be reassigned from outside the class definition.
# Add two "getter" methods as well:

# The method age should simply return @age.
# The method ethnicity should return @ethnicity.

#Release 4
#Write a program that creates lots of Santas. If you're on a cloud-based environment, you may not want to push it past about a hundred Santas. If you're on a faster computer, you may be able to make lots more than that. Play around with the numbers and see what happens.

# Obviously, no one wants to create ten thousand Santas by hand. That's what computers are for!

# Use our array of example genders and an array of example ethnicities (and feel free to add to it if you like -- each array could have a lot more options in it!) to create your Santas with a randomly selected gender and a randomly selected ethnicity. (How do you randomly select an array item? The Array documentation should be able to help you out there!)
# Set your new Santa's age to a random number between 0 and 140.
# No need to store your Santas in a data structure, but your program should print out the attributes of each Santa using the instance methods that give you access to that data.