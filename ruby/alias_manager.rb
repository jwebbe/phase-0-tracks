#  --- 5.5 Solo Challenge: Manipulating Strings with Iteration ---

# Write a Method that takes a spy's real name and creates a fake name.
# Swapping the first and last name.
# Changing all the vowels to the next consonant.
# Provide a user interface that lets a user enter a name and return a fake name back.
# User a data structure to store the fake names entered and iterate through the data structure to print all the data that was entered.

# Create a Method that Swaps names
# Names will split the full string of names into multiple ones
# We then reverse the names and keep them stored
# We then join the string together.
def swapping_names(name)
  names = name.split('')
  names.reverse!
  names.join('')
end

# Create a method to swap the vowels.
# Declare a hash for all the vowels and the next changing items to be accessed of their values.
def swapping_vowels(vowel_char)
  vowels = { 'a' => 'e', 'e' => 'i', 'i' => 'o', 'o' => 'u', 'u' => 'a' }

# We take our arguement and run the iteration and create our if/els/els statement.
# we use .map to store the next change of our letter and if the vowels are included printer the letter of the vowels otherwise print them downcase and switch them to uppercase.
  vowel_char.map! do |letter|
    if vowels.include?(letter)
      vowels[letter]
    elsif vowels.include?(letter.downcase)
      vowels[letter.downcase].upcase
    else
      letter
    end
  end
end

# We take our arguement and run the iteration and create our if/els/els statement.
# we use .map to store the next change of our letter and if the vowels are included printer the letter of the vowels otherwise print them downcase and switch them to uppercase.
def swapping_consonents(consonant_char)
  consonents = { 'b' => 'c', 'c' => 'd', 'd' => 'f', 'f' => 'g', 'g' => 'h', 'h' => 'j', 'j' => 'k', 'k' => 'l', 'l' => 'm', 'm' => 'n', 'n' => 'p', 'p' => 'q', 'q' => 's', 's' => 't', 't' => 'v', 'v' => 'w', 'w' => 'x', 'x' => 'y', 'y' => 'z', 'z' => 'b' }

  consonant_char.map! do |letter|
    if consonents.include?(letter)
      consonents[letter]
    elsif consonents.include?(letter.downcase)
      consonents[letter.downcase].upcase
    else
      letter
    end
  end
end

# Create a Method that takes the swap names method and calls the secret name and store that into a variable.
# take that reverse name and split the string
# take the swapping vowels method and call the variable for splitting the reverse names.
# take the swapping consonents methods with swapping vowels that were reversed and split and join them again to be printed.
def secret_alias_maker(secret_name)
  reverse_name = swapping_names(secret_name)
  char = reverse_name.split('')
  char_swapped_vowels = swapping_vowels(char)
  added_to_array = swapping_consonents(char_swapped_vowels)
  added_to_array.join('')
end

# create an empty string for the name and a database for the names to be stored in.
# iterate through the name unless the user says to quit
# We get that name and call our method maker and place in the secret name and print it back. then take that and store it in our data base and return the name backwards.
# re print the database to confirm that it was printed.
  name = ''
  database = {}

until name == "quit"

  puts "Please enter your full name:"
  name = gets.chomp
    unless name == "quit"
      return_alias = secret_alias_maker(secret_name)
      puts return_alias
      database[name] = return_alias
    end
end

puts database
















