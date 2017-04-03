// --- 7.3 Solo Challenge: Algortihm ---

//  --- RELEASE 0: Find the Longest Phrase ---
// Question #1: Write a function that takes an array of words and returns the longest word in the array.

// Answer #1
// Make an array with the phrases inside
var listOfPhrases = ["long phrase", "longest phrase", "longer phrase"];

// var new_phrases = listOfPhrases.toString();

// create function that will take in one parameter
function longestPhrases(phrases) {

  // var phrase = new_phrases; //.split(' ');

  // create two variables to give us our string and start at 0
  var longest_phrase = " ";
  var longest_length = 0;

// Loop i will start at 0 and if it's less then the length of the list of phrases then count up
// if the length matches then count through the strings and if not then drop that one
// Return our phrase at the end of the loop
  for (var index = 0; index < listOfPhrases.length; index++) {
    if (longest_length < listOfPhrases[index].length) {
      longest_phrase = listOfPhrases[index];
      longest_length = listOfPhrases[index].length;
    } else {
      continue;
    }
  }
  return longest_phrase
}
// Console log our result to print within the function and our array.
console.log(longestPhrases(listOfPhrases));
// ///////////////////////////////////////////////////////// //

//  --- RELEASE 1 ---
// Question #1: write a function that takes two objects and checks to see if the objects share at least one key-value pair. If the objects match then return true. If they don't match return false.

// Make a method that takes in two parameters.
// Assign variables to the 1st user(1st parameter)
// Object.values returns an array of a given object same with Object.keys with strings.
// Function will check if both pairs share one similar quality.
// We iterate through the first object and then the 2nd one as well to see if they have a match.
// If both are equal then return True if not then False.


function comparisonMethod(user1, user2) {
  var userkeys = Object.keys(user1);
  var uservalues = Object.values(user1);
  var matches = false;
  var key = " ";



  for (var index = 0; index < userkeys.length; index++) {
    key = userkeys[index];
    if ((user2.hasOwnProperty(key)) && (user1[key] == user2[key])) {
      matches = true;
    }
  }
  return matches
}

var user1 = {name: "Steven", age: 54};
var user2 = {name: "Tamir", age: 54};

if (comparisonMethod(user1, user2)) {
  console.log("The 1st statement is... True!");
} else {
  console.log("The 1st statement is... False.");
}

var user1 = {name: "Jason", age: 28};
var user2 = {name: "Tamir", age: 54};

if (comparisonMethod(user1, user2)) {
  console.log("The 2nd statement is... True!");
} else {
  console.log("The 2nd statement is... False.");
}

// ////////////////////////////////////////////

//  --- RELEASE 2: Generate Random Test Data ---

// Question 1: Write a function that takes an integer for length, and builds and returns an array of strings of the given length.

// Create a function that counts the letters in the array and adds the letters from the randomLetters function and returns the Letters.
function makingLetters(count) {
  letters = [];
  for (var index = 0; index < count; index++) {
    letters.push(randomLetters());
  }
  return letters;
}

// Create a function of RandomLetters. set the variable of abc's and create a math formula to return the largest number or equal to it with random.

function randomLetters() {
  var abc = "abcdefghijklmnopqrstuvwxyz";
  var lengthOfWord = Math.floor((Math.random() *10) +1);
  var random = " ";

// Run a loop to check the lengh of the letters. Create a variable with using the abc to cycle through all the abc's 25 +1. Create a variable to store the empty string  with the combinedletters
  for (var index = 0; index < lengthOfWord; index++) {
    var combinationLetters = abc[Math.floor((Math.random() *25)+1)];
    random = random + combinationLetters;
  }
  return random;
}

// Run another loop to create 10 instances and 5 letters largerst to amsallest to find the amount of letters inside and the longest.
for (var start = 1; start < 11; start++) {
  letters = makingLetters(5);
  console.log(start + ". the letter is, [" + letters + "]");
  console.log("The longest phrase is " + (letters));
  console.log(" ");
}
