#Christopher Mendoza & Young Ju

# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps:
  # initialize empty hash called grocery_list
  # break the string into an array of items using .split(" ")
  # iterate through array, adding each item as key with default quantity as value to the empty hash grocery_list above
  # set default quantity: 1
  # print the list to the console [can you use one of your other methods here?]: print grocery_list back to user
# output: the hash grocery_list
def create_list(items)
  list_hash = {}
  item_arry = items.split(" ")
  item_arry.each { |item| list_hash[item] = 1 }
  print_list(list_hash)
  return list_hash
end

# Method to add an item to a list
# input: grocery list, item name, and optional quantity
# steps:
  # take grocery list hash from create list method
  # add new key/value pair from item name and optional quantity
# output: new updated grocery list hash

def add_item(grocery_list_hash, new_item, qty = 1)
  grocery_list_hash[new_item] = qty
  return grocery_list_hash
end

# Method to remove an item from the list
# input: grocery list, item name
# steps:
  # take grocery list hash from create list method
  # delete key/value pair from item name and optional quantity
# output: new updated grocery list hash

def remove_item(grocery_list_hash, item)
   grocery_list_hash.delete(item)
   return grocery_list_hash
end

# Method to update the quantity of an item
# input: grocery list, item name, new desired quantity
# steps:
  # take grocery list hash from create list method
  # update the key/value pair from item name and new desired quantity
# output: new updated grocery list hash

def update_qty(grocery_list_hash, item, new_qty)
  if grocery_list_hash.has_key?(item)
    grocery_list_hash[item] = new_qty
  else
    puts "The #{item} is not on the list"
  end
  return grocery_list_hash
end

# Method to print a list and make it look pretty
# input: grocery list hash
# steps:
  # iterate through grocery list hash
  # use puts to interpolate keys and values and print data to user (such as Item : Qty)
# output: strings with data from grocery list hash

def print_list(grocery_list_hash)
  puts "Behold the wonderful grocery list!"
  puts "----------------------------------"
  grocery_list_hash.each { |item, qty|
    puts "#{item} : #{qty}"
  }
end


# DRIVER CODE
ourlist = create_list('Orange Milk Tomatoe Bread' )
p ourlist
add_item(ourlist, 'ice cream', 10)
add_item(ourlist, 'shrimp')
p ourlist
remove_item(ourlist, 'Milk')
p ourlist
update_qty(ourlist, 'ice cream', 20)
p ourlist
print_list(ourlist)
update_qty(ourlist, 'mushroom', 200)

# REFLECTION
# On your own, add a commented reflection section to your gps2_2.rb file. Answer the following questions in your reflection:

# What did you learn about pseudocode from working on this challenge?
  ##pseudocode makes it much easier to write the actual code and i learned not to use actual method names so that the program can be made in another langauge if need be.


# What are the tradeoffs of using arrays and hashes for this challenge?
  ## tradeoffs for using array's vs hashes would be in hashes you could have a key / value pair but in an array you would have to use nested arrays to create something similar and maybe working in nested items can sometimes be a bit more confusing.

# What does a method return?
  ## It returns either implicit or explicit anwers to your code. I'm not exactly sure what it's asking.

# What kind of things can you pass into methods as arguments?
  ## you can pass hashes, arrays, strings, integers, lots of stuff into methods.

# How can you pass information between methods?
  ##Call a method within another method.

# What concepts were solidified in this challenge, and what concepts are still confusing?
  ##Working with hashes and passing information to other methods became clearer.  I think simply practicing this a lot is good.