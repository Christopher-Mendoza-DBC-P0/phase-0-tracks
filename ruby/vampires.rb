#4-4 Christopher Mendoza

name = nil
age = nil
year_born = nil
garlic_bread = nil
health_insurance = nil
time = Time.new
current_year = time.year
detect = nil
counter = nil
allergies = nil
age_calc = nil

puts "How many employees to process?"
counter = gets.to_i

counter.times do

  puts "What is your name?"
  name = gets.chomp

  puts "How old are you?"
  age = gets.to_i

  puts "What year were you born? (yyyy)"
  year_born = gets.to_i
  age_calc = current_year - year_born

  puts "Our company cafeteria serves garlic bread. Should we order some for you? (yes/no)"
  garlic_bread = gets.chomp

  #p garlic_bread

  puts "Would you like to enroll in the company's health insurance? (yes/no)"
  health_insurance = gets.chomp

  #p health_insurance

  until allergies == "done" || allergies == "sunshine"
    puts "What allergies do you have? Enter one at a time. Enter 'done' when done listing allergies"
    allergies = gets.chomp
  end

  #Detection Algorithm
  if name == "Drake Cula" || name == "Tu Fang"
    detect = 1
    elsif  age != age_calc && garlic_bread == 'no' && health_insurance == 'no'
      detect = 2
    elsif age != age_calc && (garlic_bread == 'no' || health_insurance == 'no')
      detect = 3
    elsif allergies == "sunshine"
      detect = 3
    elsif age == age_calc && (garlic_bread == 'yes' || health_insurance == 'yes')
      detect = 4
    else
      detect = 99
  end

  #p name
  #p detect

  case detect
    when 1
      puts "Definitely a vampire"
    when 2
      puts "Almost certainly a vampire"
    when 3
      puts "Probably a vampire"
    when 4
      puts "Probably not a vampire"
    else
      puts "Results inconclusive"
  end
puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."
end

=begin
Release 1
  What is your name?
  How old are you?
  What year were you born?
  Our company cafeteria serves garlic bread. Should we order some for you?
  Would you like to enroll in the company’s health insurance?

Release 2
  If the employee got their age right, and is willing to eat garlic bread or sign up for insurance, the result is “Probably not a vampire.”

  If the employee got their age wrong, and hates garlic bread or waives insurance, the result is “Probably a vampire.”

  If the employee got their age wrong, hates garlic bread, and doesn’t want insurance, the result is “Almost certainly a vampire.”

  Even if the employee is an amazing liar otherwise, anyone going by the name of “Drake Cula” or “Tu Fang” is clearly a vampire, because come on. In that case, you should print “Definitely a vampire.”

  Otherwise, print “Results inconclusive.”

Release 3
  At the beginning of your program, ask the user how many employees will be processed, then begin the survey process for the first employee. After you print the result for that employee, start the survey over again, and repeat until all the employees have been processed.

Release 4
  In addition to the other questions in the survey, use a loop to ask the employee to name any allergies, one at a time. The employee can type “done” when finished.

  As long as the allergy is not “sunshine,” continue the loop for as long as is needed. If at any point the employee lists “sunshine” as an allergy, skip directly to the result of “Probably a vampire.”

Release 5
  Add a line at the very end of your program that prints, "Actually, never mind! What do these questions have to do with anything? Let's all be friends." right before it exits. Ahhh, much better.
=end

