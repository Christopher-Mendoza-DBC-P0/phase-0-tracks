// 7.2 Christopher Mendoza & Manoroth Thosy

// Release 0
// Create two arrays: Colors and Names
var colors = ['blue', 'silver', 'mettalic', 'gold'];
var names = ['jack', 'boris', 'john', 'jane'];

// add code to add name and colors
colors.push('green');
console.log(colors);

names.push('trump');
console.log(names);

//Release 1
// initiate an empty hash
var horses = {};
// create a loop that matches index position of names as keys to colors and values.
for ( var i = 0; i < names.length; i++ ) {
  horses[names[i]] = colors[i];
}

console.log(horses);

//Release 2
//write a constructor function for a car
//give it a few different properties of vairous data types
//give the constructor function and lease one function
//demonstrate that the function works be creating a few cars with it.

//in this context 'this' refers to the indvidual car we're making
function Car(make, model, speed, torque) {
  console.log("Our new car:", this);

  // this.make is sort of the Ruby equiv of @make
  this.make = make;
  this.model = model;
  this.speed = speed;
  this.torque = torque;

  // function for car
  this.engine = function() {
    console.log("vroom! vroom!");
  };
  console.log("Car initialization complete");
}

var car1 = new Car('Lexus', 'IS300', '180', '280');
console.log(car1);
car1.engine();
console.log("-----")

var car2 = new Car('Mercedes', 'E63 AMG', '186', '590');
console.log(car2);
car2.engine();
console.log("-----")


var car3 = new Car('Dodge', 'Caravan', '60', '200');
console.log(car3);
car3.engine();
console.log("-----")