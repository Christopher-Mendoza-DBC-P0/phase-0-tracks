module Shout

  def yell_angrily(words)
    puts words + "!!!" + " :("
  end

  def yelling_happily(words)
    puts words + "!!!" + " :)"
  end

end

class Human
  include Shout
end

class Talking_parrot
  include Shout
end



#Release 1
# require_relative 'Shout'
# p Shout.yell_angrily('Go Away')
# p Shout.yelling_happily('Hello')

#Release 3
human = Human.new
human.yell_angrily('go away')
human.yelling_happily('hello')
parrot = Talking_parrot.new
parrot.yell_angrily('i want a cracker')
parrot.yelling_happily('yay, i get a cracker')