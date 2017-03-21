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
# input: list(HASH), item name(KEY), quantity(VALUE)
# steps:
  # add item name as a key to the list and set quantity
# output: updated hash list

# Method to remove an item from the list
# input: list(HASH), item name(KEY), quanity(VALUE)
# steps:
    # delete key from the list and qty.
# output: updated hash list

# Method to update the quantity of an item
# input: list(HASH), item name(KEY), quanity(VALUE)
# steps:  update the list hash value
# output: updated hash list with new qty.

# Method to print a list and make it look pretty
# input: list(HASH), item name(KEY), quanity(VALUE)
# steps: print the list of items keys and values.
# output: print hash list with complete items.

def create_list(items)
  items = items.split('')
  grocery_list = {}
  items.each do |item|
    grocery_list[item] = 1
  end
  puts grocery_list
end

def add_list(item, quantity)
  grocery_list[item] = []

end










