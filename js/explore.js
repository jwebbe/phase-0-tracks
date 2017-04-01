//  --- 7.1 SYNTAX ---

// In comments, pseudocode a function that takes a string as a parameter and reverses the string. reverse("hello"), for example, should return "olleh".

// Create a dunction that reverses a string.
function reverse(str) {
  // create new_string variable to place in string after looping through original string.
  var new_string = '';
  // Start the loop and create new variable word to start at the end of our word then start the counter until it reaches zero. once we have that string store it and return the new string.
  for (var word = str.length - 1; word >= 0; word--) {
    new_string += str[word];
  }
  return new_string;
}
// Test code below and Add driver code that prints the variable if some condition is true. The condition can be a silly one, like 1 == 1.
if (1==1) {
  console.log(reverse("hello"));
}
