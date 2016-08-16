#Christopher Mendoza & Krista Prokopczyk
#Pair 6.2

class Puppy

  def initialize
    puts "initializing new puppy instance"
  end

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(number)
    number.times { puts 'woof' }
    #puts "Woof!" * number
  end

  def roll_over
    print "*rolls over*"
  end

  def dog_years(human_years)
    dog_years = human_years * 7
    return dog_years
  end

  def jump
    print "*jumps into air*"
  end

end

#Release 2
class Soccer_player

  def initialize(name)
    puts "Behold a soccer playter is born!"
    @name = name
  end

  def score_a_goal(integer)
    puts "#{@name} scored #{integer} goals"
  end

  def sprints(integer)
    puts "#{@name} sprints #{integer} yards"

  end


end

# DRIVER CODE

boris = Puppy.new
boris.fetch('tennis ball')
boris.speak(3)
boris.roll_over
p boris.dog_years(1)
boris.jump

player = Soccer_player.new('Boris')
player.score_a_goal(3)
player.sprints(4)

soccer_players = []
example_names = [ 'krista', 'chris', 'ellen', 'pele', 'mary', 'jack' ]
example_score_a_goal = [ 1, 2, 75 ]
example_sprints = [ 2, 4, 100 ]

50.times do |player|
   player1 = Soccer_player.new(example_names.sample)
   soccer_players << player1
  end

soccer_players.each { |player|
  player.sprints(example_sprints.sample)
  player.score_a_goal(example_score_a_goal.sample)
}

p soccer_players


