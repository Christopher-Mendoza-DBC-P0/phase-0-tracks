// create funtion to reverse string

// reverse("hello")
// create a string variable
// get the length of the string
// for each chracter in the string take that character index position and subract it from the index length and that number becomes the new index position for that letter.
// end after iterations = str length.
// print the output "hello" should become "olleh"

// I'm unsure if we were allowed to use the methods in the MDN literature. It was unclear to me.

var str = "hello";

function reverse1() {
  for (var i = str.length; i > -1; i--){
    var str_reverse = str[i]
    console.log(str_reverse);
  }
}

function reverse2() {
  var strReverse = str.split('').reverse().join('');
  if (str == strReverse) {
    console.log("This is a pallindrome")
  }
  else {
  console.log(strReverse);
  }
}


// Driver Code

reverse1()
reverse2()
