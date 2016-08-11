#Christopher Mendoza

#array
fifth_gen_fighters = ['F-22', 'PAK FA', 'J-20', 'J-31', 'T-50']

#hash
fifth_gen_fighters_with_countries = {
  'F-22' => 'USA' ,
  'PAK FA' => 'Russia',
  'J-20' => 'China',
  'J-31' => 'China',
  'HAL AMCA' => 'India'
}

#Release 1 - Iterate over array and hash with .each and map!
##note: .map! can't be used on hash

#.each - array
fifth_gen_fighters.each do |fighter|
  puts "The #{fighter} is a fifth generation fighter aircraft"
end

#.each - hash
fifth_gen_fighters_with_countries.each do |fighter, country|
  puts "The #{fighter} is a fifth generation fighter aircract from #{country}"
end

#.map - array
fifth_gen_fighters.map! do |fighter|
  puts "changed #{fighter} to P-51"
  fighter = 'P-51'
end
p fifth_gen_fighters


#Release 2 - Use documentation to find other Array and Hash Methods.

#Release 2-1: A method that iterates through the items, deleting any that meet certain conditions (for example, deleting any numbers that are less than 5)

array2 = ['F-22', 'PAK FA', 'J-20', 'J-31', 'T-50']
hash2 = {
  'F-22' => 'USA',
  'PAK FA' => 'Russia',
  'J-20' => 'China',
  'J-31' => 'China',
  'HAL AMCA' =>'India'
}

p array2
array2.delete_if { |fighter| fighter == "T-50" }
p array2

p hash2
hash2.delete_if { |fighter, country| country == 'China'}
p hash2

#Release 2-2: A method that filters a data structure for only items that do satisfy a certain condition.

array3 = ['F-22', 'PAK FA', 'J-20', 'J-31', 'T-50']
hash3 = {
  'F-22' => 'USA',
  'PAK FA' => 'Russia',
  'J-20' => 'China',
  'J-31' => 'China',
  'HAL AMCA' =>'India'
}

p array3.select { |fighter| fighter == 'PAK FA' }
p hash3.select { |fighter, country| fighter == 'F-22' || country == 'China' }

#Release 2-3: A different method that filters a data structure for only items satisfying a certain condition -- Ruby offers several options!

p array3.keep_if { |fighter| fighter == "J-20"}
p hash3.select { |fighter, country| fighter == 'J-20' || country == 'USA' }

#Release 2-4: A method that will remove items from a data structure until the condition in the block evaluates to false, then stops (you may not find a perfectly working option for the hash, and that's okay).

array4 = ['F-22', 'PAK FA', 'J-20', 'J-31', 'T-50']
p array4.take_while { |fighter| fighter != "J-31" }

