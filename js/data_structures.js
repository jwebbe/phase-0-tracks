//  --- 7.2 Mandatory Pairing: Data Structures ---

//  Declare 2 new arrays: #1. color #2. name
var color = ["Blue", "Red", "Green", "Yellow"];
var name = ["Felicia", "Jason", "Logan", "Tootsie"];

// Add another color & name to each array
color.push("Garnet");
name.push("Edward");
// Print the results for verification
console.log(colors);
console.log(names);
// Create a new variable and leave it as an empty object to add the two arrays to it.
var horses = {};
// We take the name array and for each item take that value and add an idex to it. Horses value is now equal to the colors index
name.forEach(function(value,index){
  horses[value] = color[index];
});
// Create a varable for a car engine for our car function.
var engine = [6, 8];
// function will take parameters already declared and we add their attrb's below with 'this' method. We print for verification.
function Car(name, color, engine) {
  this.name = name;
  this.color = color;
  this.engine = engine;

  this.speed = function() {console.log("VROOOOOOOOM!"); };
  console.log("Initialization");
}


console.log(Car)
var anotherCar = new Car("Red", "Super red", engine[1]);

console.log(anotherCar)
anotherCar.speed();

var car2 = new Car(name[3], color[2], engine[0]);

console.log(car2);
