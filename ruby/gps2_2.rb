# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps:
  # create local hash for item list
  # split the string input into an array
  # FOR EACH item in the array
    # add item as a key and set default quantity to 1
  # print the list to the console [can you use one of your other methods here?]
# output: a hash

# Method to add an item to a list
# input: list, item name, and optional quantity
# steps:
  # add item name as a key to the list and set quantity
# output: updated hash list

# Method to remove an item from the list
# input: list, item name
# steps:
  # IF the key exists in the hash
    # remove key, value pair in the hash
# output: updated hash list

# Method to update the quantity of an item
# input: list, item name, new quantity
# steps:
  # IF the key exists in the hash
    # update the value of that key to the new quantity
# output: updated hash list

# Method to print a list and make it look pretty
# input: list
# steps:
  # FOR EACH key, value pair of the hash
    # print out those values
# output: nil

def create_list(item)
  list = []
  list << item
end

def add_item(list, item_name)
  list[item_name] = []
  p list
end


def remove_items(list, item)

  if list.has_key?(item)
    list.delete(item)
  end
    puts "---------------------"
    puts "current grocery list"
    list.keys.each_with_index do | item_name, index |
    puts "#{item_name}: #{list[item_name]}"
    puts "---------------------"
  end
end


def add_groceries(list, item_name, item_number)
  list[item_name] = item_number
  p list
end

list = {}


def user_interface(list)
  puts "---------------------"
  puts "current grocery list"
  list.keys.each_with_index do | item_name, index |
    puts "#{item_name}: #{list[item_name]}"
  puts "---------------------"
  end
end


loop do
user_input = ""
  puts "please enter the name of the item in your grocery list, type none when you done"
  item_name = ""
  item_name = create_list(gets.chomp)
    if item_name == create_list("none")
      puts "here is your list"
      user_interface(list)
      user_input == "none"
      break
    end

  if user_input == "none"
    break
  else
    puts "please type the amount that you want of each item"
    item_number = gets.chomp.to_i
    add_groceries(list, item_name, item_number)
  end

end


  puts "if you want to remove an item from the list, please type the item, else type no"

  remove = remove_items(list, gets.chomp)

list = create_list("Lemonade Tomatoes")
update_qty(list, "Lemonade", 2)
update_qty(list, "Tomatoes", 3)
add_items(list, "Onions")
add_items(list, "Ice Cream", 4)
remove_items(list, "Lemonade")
update_qty(list, "Ice Cream", 1)
print_list(list)




