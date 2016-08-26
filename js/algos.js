// release 0
// Write a function that takes an array of words or phrases and returns the longest word or phrase in the array.

// declare an empty array of words
// pass in an array of words or phrases
// get the length of each word in the array
// return the word(s) or phrase(s) that is longest at that index position

var words = ['gray', 'blue', 'green'];
var evalWordsLength = [];

for ( var i = 0; i < words.length; i++) {
  evalWordsLength.push(words[i].length);
}

var largest = Math.max.apply(Math, evalWordsLength);
for ( var i = 0; i < words.length; i++) {
  if (words[i].length == largest) {
    console.log(words[i]);
  }
}

// release 1
// write a function that takes two objects and checks to see if the objects share at least one key-value pair.
// declare object 1
// declare object 2
// get list of keys from object 1
// get list of keys from object 2
// put keys from object 1 in its own array
// put keys from object 2 in its own array
// compare if there are any keys that match
// if there is a key match
// get the value of that key from object 1 and object 2 and put into compareArray.
// sort compareArray, putting pairs next to each other
// then compare value right next to the value next to it in array
// if the same print it as long as you're not looking at the same value in the array
// return true if there is a duplicate in the array


var object1 = {name: 'steven', age: 54};
var object2 = {name: 'tamir', age: 54};
var keys1 = [];
var keys2 = [];
var compareArray = [];


for (var k in object1) keys1.push(k);
//console.log(keys1);
for (var k in object2) keys2.push(k);
//console.log(keys2);
for (var i = 0; i < keys1.length; i++) {
  if (keys1[i] in object2) {
    compareArray.push(object1[keys1[i]]);
  }
 }
for (var i = 0; i < keys2.length; i++) {
  if (keys2[i] in object1) {
    compareArray.push(object2[keys2[i]]);
  }
}

compareArray.sort();

for (var x = 0; x < compareArray.length - 1; x++)
  {
  for (var y = x + 1; y < compareArray.length; y++)
    {
      if (compareArray[x] == compareArray[y])
      {
        console.log("Element that is the Same: "+compareArray[y]);
      }
    }
  }

//console.log(compareArray);

// release 2
// Write a function that takes an integer for length, and builds and returns an array of strings of the given length. So if we ran your function with an argument of 3, we would get an array of 3 random words back (the words don't have to be actual sensical English words -- "nnnnfph" totally counts). The words should be of randomly varying length, with a minimum of 1 letter and a maximum of 10 letters. (This involves a new trick, generating a random number, that you'll have to look up, but the solution on how to do so is relatively straightforward.)

//Add driver code that does the following 10 times: generates an array, prints the array, feeds the array to your "longest word" function, and prints the result.

// declare an integer for length of array
// declare where to get random letters from
// declare an array where the random words will be put
// run a generate word function
// put those words into the array
// print the array that was generated
// call longest word function to print longest word that was randomly generated

var letters = "abcdefghijklmnopqrstuvwxyz";
var randomWordsGenerated = [];
var randomWord = "";
var evalWordsLength2 = []

function howManyWords(number) {
  for ( var i = 0; i <= number; i++) {
    randomWordGenerator();
  }
}

function randomWordGenerator() {
  // random number generator to determine length of random word
  // create loop to generate a word at a random length
  for ( var i = 0; i < Math.floor(Math.random() * 10 + 1); i++)
  //random letter generator
    randomWord += letters.charAt(Math.floor(Math.random()*letters.length));
    pushRandomWord(randomWord);
    console.log(randomWord);
    randomWord = "";
}

// function to push random word generated into randomWordsGenerated array
function pushRandomWord(randomWord) {
  randomWordsGenerated.push(randomWord);
}

// function longest word for release 2

function longestWord2() {
  for ( var i = 0; i < randomWordsGenerated.length; i++) {
    evalWordsLength2.push(randomWordsGenerated[i].length);
  }

  var largest2 = Math.max.apply(Math, evalWordsLength2);
  for ( var i = 0; i < randomWordsGenerated.length; i++) {
    if (randomWordsGenerated[i].length == largest2) {
      console.log(randomWordsGenerated[i]);
    }
  }
}

// driver code
howManyWords(10);
console.log(randomWord)
console.log(randomWordsGenerated)
longestWord2();