# Virus Predictor

# I worked on this challenge [by myself, with: Krista Prokopczyk, Chris Mendoza ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
# When you run my_solution.rb, look at this file called #"state data" which is located relative to the current file.
# Require_relative 'state_data' runs the data through ruby# #interpreter first
#
require_relative 'STATE_DATA'

class VirusPredictor

#initialize the instance (creates a new object)
#require 3 arguments
#variables are accessible in the class
  def initialize(state_of_origin, population_density, population)
  @state = state_of_origin
  @population = population
  @population_density = population_density
  end

#virus effects calls predicted_deaths and speed_of_spread
#resulting in printed statements from predicted_deaths and speed_of_spread

#Release 8: removed the print statements from the other methods to  predicted_deaths and speed_of spread to make those methods only responsible for calculations and virus effects only responsible for printing.

  def virus_effects
    print "#{@state} will lose #{predicted_deaths} people in this outbreak and will spread across the state in #{speed_of_spread} months.\n\n"
  end


  private

#predicted_deaths takes 3 arguments from State_data file
#calculates the number of deaths based on population and density (and rounds to nearest integer)
#and then prints
  def predicted_deaths
  # predicted deaths is solely based on population density
  if @population_density >= 200
  number_of_deaths = (@population * 0.4).floor
  elsif @population_density >= 150
  number_of_deaths = (@population * 0.3).floor
  elsif @population_density >= 100
  number_of_deaths = (@population * 0.2).floor
  elsif @population_density >= 50
  number_of_deaths = (@population * 0.1).floor
  else
  number_of_deaths = (@population * 0.05).floor
  end

  end

#speed_of_spread takes 2 arguments from state_data file
#calculates the speed of the virus spreading based on population density
#and then puts

  def speed_of_spread #in months
  # We are still perfecting our formula here. The speed is also affected
  # by additional factors we haven't added into this functionality.
  speed = 0.0

  if @population_density >= 200
  speed += 0.5
  elsif @population_density >= 150
  speed += 1
  elsif @population_density >= 100
  speed += 1.5
  elsif @population_density >= 50
  speed += 2
  else
  speed += 2.5
  end

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state
# Don't forget STATE_DATA needs to be in caps to signify constant
STATE_DATA.each do | state_name, statistics |
  newstate = VirusPredictor.new(state_name, statistics[:population_density],statistics[:population])
  newstate.virus_effects
end

# REFLECT
## What are the differences between the two different hash syntaxes shown in state_data file?
### The differences between the hash syntaxes is the use of the colon vs. rocketship

## What does require_relative do? How is it different from require?
### require_relative requires the file and points directly to it and require, relieves you of actually knowing where it is, like a gem name.

## What are some ways to iterate throught a hash?
### you canuse a "do loop" or ".each" method for a hash/

## When refactoring virus_effects, what stood out to you about the vaiarbles, if anything?
### virus_effects was calling at the variables (ie. @) but the individual methods alerayd called those vairiables so we didn't need to do it again.

## What concept did you most solidify in this challenge?
### I think the concept that was most solidified was looping through a hash in a DRY way.