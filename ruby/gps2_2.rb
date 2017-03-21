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

def create_list(items)

  grocery_items = items.split(" ")
  grocery_list = {}

  grocery_items.each do |item|
    grocery_list[item] = 1
  end
  grocery_list
end

def add_items(list, item, quantity= 1)

  list[item] = quantity
  list
end

def remove_items(list, item)

  if list.has_key?(item)
    list.delete(item)
    list
  end
end

def update_qty(list, item, quantity)
  if list.has_key?(item)
    list[item] = quantity
    list
  end
end

def print_list(list)
  list.each do |items, qty|
    puts "#{items}:#{qty}"
  end
end

list = create_list("Lemonade Tomatoes")
update_qty(list, "Lemonade", 2)
update_qty(list, "Tomatoes", 3)
add_items(list, "Onions")
add_items(list, "Ice Cream", 4)
remove_items(list, "Lemonade")
update_qty(list, "Ice Cream", 1)
print_list(list)




