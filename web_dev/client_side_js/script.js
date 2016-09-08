console.log("The script is running!");

function addGreenBorder() {
  var photo = document.getElementById("plane-success");
  photo.style.border = "10px solid green";
}

var photo = document.getElementById("plane-success");
photo.addEventListener("mouseover", addGreenBorder);

