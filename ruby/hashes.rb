#  --- 5.2 Arrays & Hashes ---

# Write a program that will allow an interior designer to enter the details of a given client: the client's name, age, number of children, decor theme, and so on (choosing a mix of string, integer, and boolean data).

# Create a Hash with the list of items to ask from the client.
clients_info = {
  full_name: " ",
  age: [],
  number_of_children: [],
  decor_theme: " ",
  number_of_pets: [],
  budget: [],
  hobbies: " ",
  allergies: " "
}

# Prompt Interior Designer to input each data for each key for their pair values.
puts "Client's Full Name:"
clients_info[:full_name] = gets.chomp

puts "Client's Age:"
clients_info[:age] = gets.to_i

puts "How many children are at the Home?"
clients_info[:number_of_children] = gets.to_i

puts "Selection of Decor type:"
clients_info[:decor_theme] = gets.chomp

puts "How many pets are at the Home?"
clients_info[:number_of_pets] = gets.to_i

puts "Client's Budget:"
clients_info[:budget] = gets.to_i

puts "Hobbies?"
clients_info[:hobbies] = gets.chomp

# Create a TRUE/FALSE statement, and if invalid input is entered by Interior Designer they will need to resubmit.
puts "Allergies of any kind? (y/n)"
allergy = gets.chomp

  if allergy == "y"
  clients_allergic = true
  elsif allergy == "n"
  clients_allergic = false
  else
  puts "Please re-submit your response."
  end

clients_info[:allergies] = clients_allergic

# Print our CLIENTS INFO to see intial RESULTS.
puts clients_info


# Create a BOOLEAN statement, if there is an update, the Interior Designer will enter the label that needs to be updated or can create a new one if they prefer. Otherwise if no changes are to be made, exit the program.
puts "Would you like to make any changes to Client's information? (y/n)"
clients_edit = gets.chomp

  if clients_edit == "y"
    puts "Please enter the label to be updated."
    clients_info[gets.chomp.to_sym] = gets.chomp
  elsif clients_edit == "n"
    clients_edit = false
  else
    puts "Are the changes complete? (y/n)"
  end

# Print our CLIENTS INFO to see if any updates have been made.
puts clients_info
