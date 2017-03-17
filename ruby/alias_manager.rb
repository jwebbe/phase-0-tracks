#  --- 5.5 Solo Challenge: Manipulating Strings with Iteration ---

# Write a Method that takes a spy's real name and creates a fake name.
# Swapping the first and last name.
# Changing all the vowels to the next consonant.
# Provide a user interface that lets a user enter a name and return a fake name back.
# User a data structure to store the fake names entered and iterate through the data structure to print all the data that was entered.


# Create an empty Hash to store our names.
# Set Alias names to false to run for our loop later on.

regular_name = nil
secret_alias = {}


# Create a loop while condition is false to attain Agent's Full Name.
for alias_names
  if alias_names = true
  puts "Agent's Full Name:"
  secret_name = gets.chomp
  else
    puts "Please Try Again!"
  end
end

# Store that name into our variable and change any text to lowercase.
agents_name = secret_name.downcase

# Create a Method to suffle through Agent's Names with one parameter(Agent's Name)
def shuffle(agents_name)
  # Count the length of the Agent's name and store that in a variable.
  agents_name_length = agents_name.length

  index = 0
  # Create a loop to start at 0 and run through the length of letters and change each one to the next letter
  while index <= agents_name_length
    agents_name[index] = agents_name[index].next

  index += 1
  end
end

alias_names = shuffle_of_names[agents_name]

flip_names = alias_names.split('').reverse

puts names_reversed = flip_names.join('')

condition_name = names_reversed.gsub

puts condition_name.upcase

puts true_name = condition_name.split.map

secret_alias[secret_name] = true_name

  if secret_name == "complete"
    alias_names = true
  else
    alias_names = false
  end

secret_alias.each do |secret_name, true_name|
  puts "The secret name of #{secret_name} is formally known as #{true_name}."
end

